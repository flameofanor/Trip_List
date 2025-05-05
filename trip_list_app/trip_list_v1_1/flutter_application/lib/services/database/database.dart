// lib/database/database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:flutter/services.dart' show rootBundle;

import 'package:sqlite3/sqlite3.dart'; 
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
//import 'package:flutter_application/services/database.g.dart';

// import other tables
import 'type_climbing.dart' as db_climbing;

part 'database.g.dart';


// Define tables that match the database schema
// Define collapsable section for tables
// This section can be expanded or collapsed for better readability

// #region gear types 
enum GearType {
  climbing;
  //camping,
  //clothing;

  static GearType fromString(String value) {
    return GearType.values.firstWhere(
      (type) => type.name == value,
    );
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
    return GearTypeClimbing.values.firstWhere(
      (type) => type.name == value,
    );
  }



  }

// #endregion




// #region tables
class MasterGear extends Table {
  IntColumn get itemId => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get type => text()(); // "climbing"
  IntColumn get quantity => integer().withDefault(const Constant(0))();
  IntColumn get weight =>
      integer().withDefault(const Constant(0))(); // in tenths of grams
  IntColumn get price => integer().withDefault(const Constant(0))(); // in cents
}



class GearNeedsRepair extends Table {
  IntColumn get repairId => integer().autoIncrement()();
  IntColumn get itemId => integer().references(MasterGear, #itemId)();
  TextColumn get type =>
      text()(); // ('patch', 'part_replacement', 'sharpening', 'sewing', 'water_proofing', 'wash')
  IntColumn get usable => integer().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();
}

class GearNotes extends Table {
  IntColumn get itemId => integer().references(MasterGear, #itemId)();
  TextColumn get note => text().nullable()();
}

// #endregion

@DriftDatabase(tables: [
    MasterGear,
    GearNeedsRepair,
    GearNotes,
    ...db_climbing.climbingTables
    ])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  
  
  

  final typeClimbing = db_climbing.TypeClimbing();


  @override
  int get schemaVersion => 1;

// #region Adding Gear
  // Add gear to master gear table
  Future<int> addGear (
    String name,
    String type,
    int quantity,
    int weightTg,
    int priceCents,
  ) {
    return into(masterGear).insert( //does this return the item_id? could i make it do so? I kinda need the item id for other things
      MasterGearCompanion.insert(
        name: name,
        type: type,
        quantity: Value(quantity),
        weight: Value(weightTg),
        price: Value(priceCents),
      ),
    );
    // final gearType = GearType.fromString(type);
    // switch (gearType) {
    //   case GearType.climbing:

    //     break;
    //   // case GearType.camping:
    //   //   break;
    //   // case GearType.clothing:
    //   //   break;
    
  }

 // Add gear to sub tables
  Future<int> addClimbingGear(int itemId, String type)  {
    return into(climbingGear).insert(
      ClimbingGearCompanion(
        itemId: Value(itemId),
        type: Value(type)

      )
    );
  }
  
  // IDEA!
  /*
what about making it so a gear adder will request the items that the database needs in gui? wait nvmd a lot of that
will move to backend. im just trying to thing of ways to avoid writing a million functions for every table. maybe thats
just how sql tables get handled? I guess if i did it the way e was saying where each table has a single value (2 column)
I could standardize better. Hmm. Like a rope could have multiple entries with different values leading back to the same
master gear item? not sure if that really makes sense
also instead of climbing gear table, it might be better to make a sqlite... i forget the name of it, but the thing that saves
processing time by building like a relational index to keep track of what master gear items are type = climbing gear

hmm. these are ideas that could make defining new tables easier in the end. It might be worth making another database and structuring 
it this way and writing an app that works with it to see what i like better.
This might be the play, i think a lot of handler functions could be general and the app would request more input / show more input When
it is available.
even better sqlite allows me to make non-strict tables with different value types in the same column i believe?



is there a way to say companion of table x?
well if i did the stuff detailed above, i dont think id need to
br might be onto something with the way they do things methinks

  */




// #endregion

  Future<List> getGear(int itemId) async {
    List list = [];
    String type = await getType(itemId);
    if (type == "climbing") {
      
    }
    return list;
  }

    
    

// #region Master Gear Getters:
  Future<String> getName(int itemId) =>
    (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.name).getSingle();

  Future<String> getType(int itemId) =>
    (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.type).getSingle();

  Future<int> getQuantity(int itemId) =>
    (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.quantity).getSingle();

// weight stored in tengths of a gram (int)
  Future<int> getWeight(int itemId) => 
    (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.weight).getSingle();

// price in cents 
  Future<int> getPrice(int itemId) => 
    (select(masterGear)..where((g) => g.itemId.equals(itemId))).map((row) => row.price).getSingle();

  // Get all gear of type
  Future<List<MasterGearData>> getMasterGearByType(String type) =>
      (select(masterGear)..where((g) => g.type.equals(type))).get();

  // Get all master gear items
  Future<List<MasterGearData>> getAllMasterGear() => select(masterGear).get();
// #endregion

// #region Master Gear Setters:

  Future<void> setName(int itemId, String name) =>
    (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(name: Value(name)));

  Future<void> setType(int itemId, String type) =>
    (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(type: Value(type)));

  Future<int> setQuantity(int itemId, int quantity) =>
    (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(quantity: Value(quantity)));

  Future<void> setWeight(int itemId, int weight) =>
    (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(weight: Value(weight)));

  Future<void> setPrice(int itemId, int price) =>
    (update(masterGear)..where((g) => g.itemId.equals(itemId))).write(MasterGearCompanion(price: Value(price)));

  /// removes item from master gear table (todo: make hardDelete() remove item from all other tables)
  Future<int> hardDelete(int itemId) =>
      (delete(masterGear)..where((g) => g.itemId.equals(itemId))).go();

  /// set quantity to zero
  Future<void> softDelete(int itemId) => setQuantity(itemId, 0);

  /// \+ int to add, - int to subtract
  /// + if quantity would be zero or negative, soft deletes item instead
  Future<void> changeQuantity(int itemId, int quanitityChange) async {
   int newQuantity = quanitityChange + await getQuantity(itemId);
   if (newQuantity <= 0) {softDelete(itemId);}
   else {setQuantity(itemId, newQuantity);}
  }

// #endregion

// #region type table handlers:

  /// Adds an item that exists in MasterGear to ClimbingGear table
  /// Once completed, calls [db_climbing.TypeClimbing.addGear]
  /// type here is of ('runner', 'protection', 'rope', 'ropework', 'hardware', 'iceaxe', 'personal')
  Future<void> addClimbing(int itemId, String type) async
  {
    await into(climbingGear).insert(
        ClimbingGearCompanion.insert(
            itemId: Value(itemId),
            type: type
        ),
    );
    typeClimbing.addGear(itemId, type);
  }

// #endregion





  // Watch master gear for reactive UI updates
  Stream<List<MasterGearData>> watchAllMasterGear() =>
      select(masterGear).watch();



  // Watch gear by type for reactive UI updates
  Stream<List<MasterGearData>> watchMasterGearByType(String type) =>
      (select(masterGear)..where((g) => g.type.equals(type))).watch();

  // Update master gear
  Future<bool> updateMasterGear(MasterGearData gear) =>
      update(masterGear).replace(gear);
}


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
