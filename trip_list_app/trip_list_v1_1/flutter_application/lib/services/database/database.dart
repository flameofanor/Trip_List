// lib/database/database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:flutter/services.dart' show rootBundle;

import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
//import 'package:flutter_application/services/database.g.dart';

// import other tables

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
  late final int itemId;
  late final String name;
  late final int quantity;
  late final int? weight;
  late final List<List<dynamic>>? categoryList;
  late final List<List<dynamic>>? attributeList;
  // Constuctor
  GearItem({
    required this.itemId,
    required this.name,
    required this.quantity,
    this.weight,
    List<List<dynamic>>? categoryList,
    List<List<dynamic>>? attributeList,
  }) {
    this.categoryList =
        categoryList != null
            ? List<List<dynamic>>.unmodifiable(categoryList)
            : null;
    this.attributeList =
        attributeList != null
            ? List<List<dynamic>>.unmodifiable(attributeList)
            : null;
  }
  // Getters
  int getItemId() => itemId;
  String getName() => name;
  int getQuantity() => quantity;
  int? getWeight() => weight;
  List<List<dynamic>>? getCategoryList() => categoryList;
  List<List<dynamic>>? getAttributeList() => attributeList;
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
/// int[itemId], text[type], text[name]?, any[value]?
class Category extends Table {
  IntColumn get itemId => integer().references(Master, #itemId)();
  TextColumn get type => text()();
  TextColumn get name => text().nullable()();
  Column get value => sqliteAny()();
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
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // #region Adding Gear

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
    Value<DriftAny> value,
  ) {
    return into(category).insert(
      CategoryCompanion(
        itemId: Value(itemId),
        type: Value(type),
        name: name != null ? Value(name) : const Value.absent(),
        value: value,
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

  // #region Getters
  Future<List<dynamic>> getMaster(int id) {
    return (select(master)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  Future<List<dynamic>> getCategories(int id) {
    return (select(category)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  Future<List<dynamic>> getAttributes(int id) {
    return (select(attribute)..where((tbl) => tbl.itemId.equals(id))).get();
  }

  Future<List<List<dynamic>>> getItem(int id) async {
    List<List<dynamic>> itemData = [[], [], []];
    itemData[0] = await getMaster(id);
    itemData[1] = await getCategories(id);
    itemData[2] = await getAttributes(id);
    return itemData;
  }

  /// Returns a [GearItem] object
  Future<GearItem> getGearItem(int id) async {
    List<List<dynamic>> itemData = await getItem(id);
    int itemId = itemData[0][0].itemId as int;
    String name = itemData[0][0].name as String;
    int quantity = itemData[0][0].quantity as int;
    int? weight = itemData[0][0].weight as int?;
    List<List<dynamic>> categoryList = [[]];
    List<List<dynamic>> attributeList = [[]];
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
}
// #endregion


// Future<List> getGear(int itemId) async {
//   List list = [];
//   String type = await getType(itemId);
//   if (type == "climbing") {

//   }
//   return list;
// }

// #region Master Gear Getters:
//   Future<String> getName(int itemId) =>
//     (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.name).getSingle();

//   Future<String> getType(int itemId) =>
//     (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.type).getSingle();

//   Future<int> getQuantity(int itemId) =>
//     (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.quantity).getSingle();

// // weight stored in tengths of a gram (int)
//   Future<int> getWeight(int itemId) =>
//     (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.weight).getSingle();

// // price in cents
//   Future<int> getPrice(int itemId) =>
//     (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.price).getSingle();

//   // Get all gear of type
//   Future<List<MasterGearData>> getMasterGearByType(String type) =>
//       (select(masterGear)..where((g) => g.type.equals(type))).get();

//   // Get all master gear items
//   Future<List<MasterGearData>> getAllMasterGear() => select(masterGear).get();
// // #endregion

// // #region Master Gear Setters:

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

// // #endregion

//   // Watch master gear for reactive UI updates
//   Stream<List<MasterGearData>> watchAllMasterGear() =>
//       select(masterGear).watch();

//   // Watch gear by type for reactive UI updates
//   Stream<List<MasterGearData>> watchMasterGearByType(String type) =>
//       (select(masterGear)..where((g) => g.type.equals(type))).watch();

//   // Update master gear
//   Future<bool> updateMasterGear(MasterGearData gear) =>
//       update(masterGear).replace(gear);
// }

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // Get database location

    final dbFolder = await getApplicationDocumentsDirectory();
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
