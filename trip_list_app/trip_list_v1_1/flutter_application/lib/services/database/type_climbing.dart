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

//import other tables
import 'database.dart' as db;





const climbingTables = [
  ClimbingGear,
  ClimbingGearHardware,
  ClimbingGearIceaxe,
  ClimbingGearPersonal,
  ClimbingGearPersonalShoes,
  ClimbingGearProtection,
  ClimbingGearRope,
  ClimbingGearRopework,
  ClimbingGearRunner,
];

enum GearType {
    rope,
    protection,
    runner,
    ropework,
    hardware,
    iceaxe,
    personal;

    static GearType fromString(String value) {
    return GearType.values.firstWhere(
      (type) => type.name == value,
    );
  }



  }





// #region tables

class ClimbingGear extends Table {
  IntColumn get itemId => integer().references(db.MasterGear, #itemId)();
  @override
  Set<Column<Object>> get primaryKey => {itemId}; //item id is primary and foreign key
  TextColumn get type =>
      text()(); // type IN ('runner', 'protection', 'rope', 'ropework', 'hardware', 'iceaxe', 'personal')
}

class ClimbingGearHardware extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type => text()(); // ('beaner', 'rap_ring', 'chain')
  TextColumn get material => text()(); // ('steel', 'aluminum')
  IntColumn get locking => integer().withDefault(const Constant(0))();
  IntColumn get size => integer().withDefault(const Constant(0))();
}

class ClimbingGearIceaxe extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type => text()(); // ('glacier', 'snow', 'ice')
  IntColumn get lengthCm => integer().withDefault(const Constant(0))();
  IntColumn get slope => integer().withDefault(const Constant(0))();
  IntColumn get mixed => integer().withDefault(const Constant(0))();
}

class ClimbingGearPersonal extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type => text()(); // ('helmet', 'chalkbag', 'harness', 'shoes')
}

class ClimbingGearPersonalShoes extends Table {
  IntColumn get shoeId => integer().autoIncrement()();
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type => text()(); // ('rock', 'approach', 'ice')
  IntColumn get condition => integer().withDefault(const Constant(0))();
  IntColumn get resoles => integer().withDefault(const Constant(0))();
  TextColumn get rubberType => text().nullable()();
  IntColumn get tradScore => integer().withDefault(const Constant(0))();
  IntColumn get sportScore => integer().withDefault(const Constant(0))();
  IntColumn get crackScore => integer().withDefault(const Constant(0))();
  IntColumn get hikingScore => integer().withDefault(const Constant(0))();
  IntColumn get agressiveScore => integer().withDefault(const Constant(0))();
}

class ClimbingGearProtection extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type =>
      text()(); // ('cam', 'nut', 'tube', 'hex', 'icescrew', 'snowpicket')
  IntColumn get size => integer().withDefault(const Constant(0))();
}

class ClimbingGearRope extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type => text()(); // ('rope', 'webbing', 'tagline')
  IntColumn get lengthM => integer().withDefault(const Constant(0))();
  IntColumn get widthTmm => integer().withDefault(const Constant(0))();
  IntColumn get dryTreated => integer().withDefault(const Constant(0))();
  IntColumn get isDynamic => integer().withDefault(const Constant(0))();
  TextColumn get dom => text().withDefault(const Constant('2000-01-01'))();
  IntColumn get condition => integer().withDefault(const Constant(0))();
}

class ClimbingGearRopework extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type =>
      text()(); // ('atc', 'grigri', 'jumar', 'rappel', 'microtraction', 'other')
  RealColumn get widthMinTmm => real().withDefault(const Constant(0))();
  RealColumn get widthMaxTmm => real().withDefault(const Constant(0))();
  IntColumn get autoLocking => integer().withDefault(const Constant(0))();
  IntColumn get mechanicalDevice => integer().withDefault(const Constant(0))();
  IntColumn get doubleRope => integer().withDefault(const Constant(0))();
}

class ClimbingGearRunner extends Table {
  IntColumn get itemId => integer().references(ClimbingGear, #itemId)();
  TextColumn get type =>
      text()(); // ('quickdraw', 'longdraw', 'alpine_draw', 'single', 'double', 'loadlimited')
  IntColumn get lengthCm => integer().withDefault(const Constant(0))();
}

// #endregion


class TypeClimbing {

  


  




// #region 
  Future<void> addGear(int itemId, String type) async {
    final gearType = GearType.fromString(type);
    switch (gearType) {
        case GearType.rope:
          break;
        case GearType.protection:
          break;
        case GearType.runner:
          break;
        case GearType.ropework:
          break;
        case GearType.hardware:
          break;
        case GearType.iceaxe:
          break;
        case GearType.personal:
          break;
    }
  }
    

// #endregion



}
