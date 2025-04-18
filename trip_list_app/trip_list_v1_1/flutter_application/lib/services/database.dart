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

part 'database.g.dart';

// Define tables that match your existing database schema
class MasterGear extends Table {
  IntColumn get itemId => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get type => text()();
  IntColumn get qty => integer().withDefault(const Constant(0))();
  IntColumn get weightTg => integer().withDefault(const Constant(0))();
  IntColumn get priceCents => integer().withDefault(const Constant(0))();
}

// Add more table definitions matching your schema as needed...
// class ClimbingGear extends Table {
//   IntColumn get itemId => integer().references(MasterGear, #itemId)();
// }

@DriftDatabase(tables: [MasterGear])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
  
  // Master Gear Operations
  Future<int> addMasterGear(
    String name,
    String type,
    int qty,
    int weightTg,
    int priceCents,
  ) {
    return into(masterGear).insert(
      MasterGearCompanion.insert(
        name: name,
        type: type,
        qty: Value(qty),
        weightTg: Value(weightTg),
        priceCents: Value(priceCents),
      ),
    );
  }
  
  // Get all master gear items
  Future<List<MasterGearData>> getAllMasterGear() => select(masterGear).get();
  
  // Watch master gear for reactive UI updates
  Stream<List<MasterGearData>> watchAllMasterGear() => select(masterGear).watch();
  
  // Get all gear by type 
  Future<List<MasterGearData>> getMasterGearByType(String type) =>
    (select(masterGear)..where((g) => g.type.equals(type))).get();
    
  // Watch gear by type for reactive UI updates
  Stream<List<MasterGearData>> watchMasterGearByType(String type) =>
    (select(masterGear)..where((g) => g.type.equals(type))).watch();
    
  // Update master gear
  Future<bool> updateMasterGear(MasterGearData gear) =>
    update(masterGear).replace(gear);
    
  // Delete master gear
  Future<int> deleteMasterGear(int itemId) =>
    (delete(masterGear)..where((g) => g.itemId.equals(itemId))).go();
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
      final ByteData data = await rootBundle.load('assets/database/triplist.db');
      final List<int> bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
    }

    return NativeDatabase.createInBackground(file);
  });
}