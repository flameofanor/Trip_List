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
