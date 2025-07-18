// lib/database/database.dart
import 'dart:io';
import 'dart:collection';
import 'package:synchronized/synchronized.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:flutter/services.dart' show rootBundle;

import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

// #region gear types
enum GearType {
  climbing;
  //camping,
  //clothing;

  static GearType fromString(String value) {
    return GearType.values.firstWhere((type) => type.name == value);
  }
}

enum GearTypeClimbing {
  rope,
  protection,
  runner,
  ropework,
  hardware,
  iceaxe,
  personal;

  static GearTypeClimbing fromString(String value) {
    return GearTypeClimbing.values.firstWhere((type) => type.name == value);
  }
}

// #endregion







// Gear Item
/// Stores all information attached to an itemId
/// [Master] = [itemId], [name], [quantity], [weight]
///
/// For each row in [Category] and [Attribute] tables corresponding to [itemId]:
///
/// [categoryList] = [Category.type], [Category.name], [Category.value]
/// [attributeList] = [Attribute.type], [Attribute.name], [Attribute.value]
///
/// [weight], [categoryList], and [attributeList] are nullable fields
class GearItem {
  late int itemId;
  late String name;
  late int quantity;
  late int? weight;
  late List<List<dynamic>>? categoryList;
  late List<List<dynamic>>? attributeList;
  // Constuctor
  GearItem({
    required this.itemId,
    required this.name,
    required this.quantity,
    this.weight,
    List<List<dynamic>>? categoryList,
    List<List<dynamic>>? attributeList,
  });
  // Getters
  int? getItemId() => itemId;
  String getName() => name;
  int getQuantity() => quantity;
  int? getWeight() => weight;
  List<List<dynamic>> getCategoryList() => categoryList ?? [];
  List<List<dynamic>> getAttributeList() => attributeList ?? [];

  // Setters
  void setItemId(int itemId) {
	this.itemId = itemId;
  }
  void setName(String name) {
  this.name = name;
  }

void setQuantity(int quantity) {
  this.quantity = quantity;
}

void setWeight(int? weight) {
  this.weight = weight;
}

}

// #region tables
class Master extends Table {
  IntColumn get itemId => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get quantity => integer()();
  IntColumn get weight => integer().nullable()(); // in tenths of grams
  @override
  bool get isStrict => true;
}

/// For categorizing gear into types and subtypes
/// int[itemId], text[type], text[name]?, text[value]
class Category extends Table {
  IntColumn get itemId => integer().references(Master, #itemId)();
  TextColumn get type => text()();
  TextColumn get name => text().nullable()();
  TextColumn get value => text()();
  @override
  bool get isStrict => true;
}

/// Stores attributes of gear, one attribute per row
/// int[itemId], text[type], text[name]?, any[value]?
class Attribute extends Table {
  IntColumn get itemId => integer().references(Master, #itemId)();
  TextColumn get type => text()();
  TextColumn get name => text().nullable()();
  Column get value => sqliteAny()();
  @override
  bool get isStrict => true;
}
// #endregion

@DriftDatabase(tables: [Master, Category, Attribute])
class AppDatabase extends _$AppDatabase {
  
  AppDatabase._() : super(_openConnection());

  static final AppDatabase _database = AppDatabase._();
  factory AppDatabase() => _database;

  @override
  int get schemaVersion => 1;

  //#region Searching


  /// stays sorted :)
  SplayTreeMap<int, GearItem> gearItemSearch = SplayTreeMap<int, GearItem>();
  
  final searchLock = Lock();

  ///- sets [gearItemSearch]
  ///- used once during app loading
  void setGearItemSearch() async {
    await searchLock.synchronized(() async {
      List<GearItem> gearItemSorted = [];
      gearItemSorted = await getGearItems(await getMasterId());
      for (GearItem item in gearItemSorted) {
		if (item.itemId != null) {
			final id = item.itemId!;
			gearItemSearch[id] = item;
		}
	  }
    });
  }

/// adds an item to the search list. Used when a new item is created 
  Future<bool> addGearItemSearh(GearItem item) async {
    await searchLock.synchronized(() {
      	if (item.itemId != null) {
			final id = item.itemId!;
			gearItemSearch[id] = item;
			return true;
		}
    });
	return false;
  }

  Future<GearItem?> removeGearItemSearch(int id) async {
    GearItem? item;
    await searchLock.synchronized(() {
      item = gearItemSearch.remove(id);
    });
    return item;
  }

	/// gets single [GearItem] with [GearItem.itemId] == [id]
  Future<GearItem?> searchGearItem(int id) async {
    GearItem? item;
    await searchLock.synchronized(() {
      item = gearItemSearch[id];
    });
    return item;
  }

	/// gets all [GearItem] in set [ids]
    Future<Set<GearItem?>> searchGearItems(Set<int> ids) async {
    Set<GearItem?> items = {};
    await searchLock.synchronized(() async {
      for (int id in ids) {
		items.add(await searchGearItem(id));
	  }
    });
    return items;
  }

 /// - searches [Master] for name.contains([target])
 /// - searches [Category] for value.contains([target])
 /// - searches [Attribute] for value.contains([target]) and name.contains([target])
 /// returns a set of [Master.itemId] that satisfies any of these conditions, possibly an empty set
 /// call [gearSearch] to 
  Future<Set<int>> gearSearch(String target) async {
	Set<int> resultSet = {};
    //search master name
	final queryMaster = select(master)..where((tbl) => tbl.name.contains(target));
	var resultsMaster = await queryMaster.get();
	resultSet.addAll(resultsMaster.map((row) => row.itemId).toSet());
	//search category value
	final queryCategory = select(category)..where((tbl) => tbl.value.contains(target));
	var resultsCategory = await queryCategory.get();
	resultSet.addAll(resultsCategory.map((row) => row.itemId).toSet());
	//search attribute name
	final queryAttributeName = select(attribute)..where((tbl) => tbl.name.contains(target));
	var resultsAttributeName = await queryAttributeName.get();
	resultSet.addAll(resultsAttributeName.map((row) => row.itemId).toSet());
	//search attribute value
	// final queryAttributeValue = select(attribute)..where((tbl) => tbl.value.contains(target)); /// fix this
	// var resultsAttributeValue = await queryAttributeValue.get();
	// resultSet.addAll(resultsAttributeValue.map((row) => row.itemId).toSet());
	return resultSet;
  }

  //#endregion

  //#region Adders

  /// add a new [GearItem] to database and to the search [SplayTreeMap], [gearItemSearch]
  /// - returns [GearItem.itemId]
  Future<int> addGearItem(GearItem newItem) async {
	int id = await addGearMaster(newItem.getName(), newItem.getQuantity(), newItem.getWeight());
	newItem.setItemId(id);
	List<List<dynamic>> categoryList = newItem.getCategoryList();
	List<List<dynamic>> attributeList = newItem.getAttributeList();
	for (List<dynamic> category in categoryList) {
		addGearCategory(id, category[0].toString(), category[1]?.toString(), category[2]);
	}
	for (List<dynamic> attribute in attributeList) {
		addGearAttributes(id, attribute[0].toString(), attribute[1]?.toString(), attribute[2]);
	}
	return id;
  }

  /// Add gear to master table
  /// returns [Master.itemId] of new item
  Future<int> addGearMaster(String name, int quantity, int? weight) {
    return into(master).insert(
      MasterCompanion.insert(
        name: name,
        quantity: quantity,
        weight: weight != null ? Value(weight) : const Value.absent(),
      ),
    );
  }

  /// Add gear to [Category]
  Future<int> addGearCategory(
    int itemId,
    String type,
    String? name,
    String value,
  ) {
    return into(category).insert(
      CategoryCompanion(
        itemId: Value(itemId),
        type: Value(type),
        name: name != null ? Value(name) : const Value.absent(),
        value: Value(value),
      ),
    );
  }

  /// Add gear to [Attribute]
  Future<int> addGearAttributes(
    int itemId,
    String type,
    String? name,
    Value<DriftAny> value,
  ) {
    return into(attribute).insert(
      AttributeCompanion(
        itemId: Value(itemId),
        type: Value(type),
        name: name != null ? Value(name) : const Value.absent(),
        value: value,
      ),
    );
  }
  // #endregion

//#region Getters
  /// If no [id] is given, returns all master gear
  Future<List<dynamic>> getMaster(int? id) {
    if (id == null) {
      return select(master).get();
    }
    return (select(master)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  /// gets all [Master.itemId] in an ordered set
  Future<Set<int>> getMasterId() async {
    final query = select(master);
    query.orderBy([(t) => OrderingTerm(expression: t.itemId)]);
	final result = await query.map((row) => row.itemId).get();
    return result.toSet();
  }

  /// if no [id] is given, returns all categories
  Future<List<dynamic>> getCategories(int? id) {
    if (id == null) {
      return select(category).get();
    }
    return (select(category)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  /// - returns [List] of [String]
  /// - contains all values for category rows in [GearItem]
  List<String> getCategoryValues(GearItem item) {
    if (item.getCategoryList().isEmpty) {
      return [];
    }
    return item.getCategoryList()
        .where(
          (subList) => subList.length > 2,
        ) // Ensure the sublist has an index 2
        .map((subList) => subList[2].toString())
        .toList();
  }

  /// if no [id] is given, returns all attributes
  Future<List<dynamic>> getAttributes(int? id) {
    if (id == null) {
      return select(attribute).get();
    }
    return (select(attribute)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  /// Get all [GearItem] of type
  /// - [type] category, subcategory
  /// - [value] climbing, camping, or rope, protection, etc.
  /// - if both inputs are provided, returns a list of all [GearItem]
  /// which has [type] with [value] in the same db row
  /// - If just one input is provided, returns list of [GearItem] matching the input
  /// - If no inputs are given, returns empty list
  /// - If no gear is found, also returns empty list
  Future<List<GearItem>> getGearByCategory([
    String? type,
    String? value,
  ]) async {
    List<GearItem> gearItems = [];
    if (type != null && value != null) {
      gearItems = await getGearItems( 
		(await (select(category)
          ..where((g) => g.type.equals(type))).map((row) => row.itemId).get()).toSet()
	  );
      List<GearItem> gearItemsReturn = [];
      for (GearItem gear in gearItems) {
        List<List<dynamic>> categoryList = gear.getCategoryList();
        for (List<dynamic> categories in categoryList) {
          if (categories[0] == type && categories[2] == value) {
            gearItemsReturn.add(gear);
            break;
          }
        }
      }
      return gearItemsReturn;
    }
    if (type != null) {
      return getGearItems(
        (await (select(category)
          ..where((g) => g.type.equals(type))).map((row) => row.itemId).get()).toSet()
      );
    }
    if (value != null) {
      return getGearItems(
        (await (select(category)
          ..where((g) => g.value.equals(value))).map((row) => row.itemId).get()).toSet()
      );
    }
    return [];
  }

  /// Get all [GearItem] with attribute
  /// - [type] type of attribute
  /// - [value] dynamic value of attribute
  /// - if both inputs are provided, returns a list of all [GearItem]
  /// which has [type] with [value] in the same db row
  /// - If just one input is provided, returns list of [GearItem] matching the input
  /// - If no inputs are given, returns empty list
  /// - If no gear is found, also returns empty list
  Future<List<GearItem>> getGearByAttribute([
    String? type,
    dynamic value,
  ]) async {
    List<GearItem> gearItems = [];

    if (type != null && value != null) {
      gearItems = await getGearItems(
        (await (select(attribute)
          ..where((a) => a.type.equals(type))).map((row) => row.itemId).get()).toSet()
      );

      List<GearItem> gearItemsReturn = [];
      for (GearItem gear in gearItems) {
        List<List<dynamic>> attributeList = gear.getAttributeList();
        for (List<dynamic> attrs in attributeList) {
          if (attrs[0] == type && attrs[2] == value) {
            gearItemsReturn.add(gear);
            break;
          }
        }
      }
      return gearItemsReturn;
    }
    if (type != null) {
      return getGearItems(
        (await (select(attribute)
          ..where((a) => a.type.equals(type))).map((row) => row.itemId).get()).toSet()
      );
    }
    if (value != null) {
      return getGearItems(
        (await (select(attribute)
          ..where((a) => a.value.equals(value))).map((row) => row.itemId).get()).toSet()
      );
    }
    return [];
  }

  Future<List<List<dynamic>>> getItem(int id) async {
    List<List<dynamic>> itemData = [[], [], []];
    itemData[0] = await getMaster(id);
    itemData[1] = await getCategories(id);
    itemData[2] = await getAttributes(id);
    return itemData;
  }

  /// - takes a list of [ids] which can have duplicates, and produces a list of unique [GearItem]
  /// - if no input is given, returns all [GearItem] in [Master]
  Future<List<GearItem>> getGearItems([Set<int>? ids]) async {
    ids ??= (await getMasterId());
    List<GearItem> items = [];
    List<int> idsUnique = ids.toSet().toList();
    for (var id in idsUnique) {
      items.add(await getGearItem(id));
    }
    return items;
  }


  /// Returns a [GearItem] object
  Future<GearItem> getGearItem(int id) async {
    List<List<dynamic>> itemData = await getItem(id);
    int itemId = itemData[0][0].itemId as int;
    String name = itemData[0][0].name as String;
    int quantity = itemData[0][0].quantity as int;
    int? weight = itemData[0][0].weight as int?;
    List<List<dynamic>> categoryList = [];
    List<List<dynamic>> attributeList = [];
    itemData[0][1].forEach((CategoryData item) {
      List<dynamic> subList = [];
      subList.add(item.type);
      subList.add(item.name);
      subList.add(item.value);
      categoryList.add(subList);
    });
    itemData[0][1].forEach((AttributeData item) {
      List<dynamic> subList = [];
      subList.add(item.type);
      subList.add(item.name);
      subList.add(item.value);
      attributeList.add(subList);
    });
    return GearItem(
      itemId: itemId,
      name: name,
      quantity: quantity,
      weight: weight,
      categoryList: categoryList,
      attributeList: attributeList,
    );
  }
  //#endregion


//#region Setters


//   Future<void> setName(int itemId, String name) =>
//     (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(name: Value(name)));

//   Future<void> setType(int itemId, String type) =>
//     (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(type: Value(type)));

//   Future<int> setQuantity(int itemId, int quantity) =>
//     (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(quantity: Value(quantity)));

//   Future<void> setWeight(int itemId, int weight) =>
//     (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(weight: Value(weight)));

//   Future<void> setPrice(int itemId, int price) =>
//     (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(price: Value(price)));

//   /// removes item from master gear table (todo: make hardDelete() remove item from all other tables)
//   Future<int> hardDelete(int itemId) =>
//       (delete(masterGear)..where((g) => g.itemId.equals(itemId))).go();

//   /// set quantity to zero
//Future<void> softDelete(int itemId) =>

//   /// \+ int to add, - int to subtract
//   /// + if quantity would be zero or negative, soft deletes item instead
//   Future<void> changeQuantity(int itemId, int quanitityChange) async {
//    int newQuantity = quanitityChange + await getQuantity(itemId);
//    if (newQuantity <= 0) {softDelete(itemId);}
//    else {setQuantity(itemId, newQuantity);}
//   }

//#endregion


//#region Stream Updates
// Future<List<GearItem>> convertMasterToGearItems(List<MasterData> masterItems) async {
//   final futures = masterItems.map((item) => getGearItem(item.itemId)).toList();
//   return await Future.wait(futures);
// }

/// returns a stream list of all [GearItem] in the database
  // Stream<List<GearItem>> watchAllMasterGear() =>
  //   select(master).watch().asyncMap((masterItems) => convertMasterToGearItems(masterItems));

  

//#endregion

}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // Get database location

    final dbFolder = await getApplicationDocumentsDirectory();
    //final dbFolder = '/Users/willcash/Documents/TripList_Dev';
    final file = File(p.join(dbFolder.path, 'app.db'));

    if (kDebugMode) {
      print('Database location: ${file.path}');
    }

    // Option to copy your development database from assets
    // Uncomment this if you want to include your prebuilt database
    if (!await file.exists()) {
      // Copy from assets
      final ByteData data = await rootBundle.load(
        'assets/database/triplist.db',
      );
      final List<int> bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
    }

    return NativeDatabase.createInBackground(file);
  });
}
