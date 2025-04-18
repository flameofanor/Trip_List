import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart';
import 'package:drift/drift.dart';


class DatabaseService {

    

    static final DatabaseService instance = DatabaseService._constructor();
    static Database? _db;

    // Master table
    final String _masterGearTableName = 'master_gear';

    // Gear categories
    final String _climbingGearTableName = 'climbing_gear';

    // Other tables
    final String _gearNeedsRepairTableName = 'gear_needs_repair';
    final String _gearNotesTableName = 'gear_notes';

    // Climbing gear tables
    final String _climbingGearHardwareTableName = 'climbing_gear_hardware';
    final String _climbingGearIceaxeTableName = 'climbing_gear_iceaxe';
    final String _climbingGearPersonalShoesTableName = 'climbing_gear_personal_shoes';
    final String _climbingGearPersonalTableName = 'climbing_gear_personal';
    final String _climbingGearProtectionTableName = 'climbing_gear_protection';
    final String _climbingGearRopeTableName = 'climbing_gear_rope';
    final String _climbingGearRopeworkTableName = 'climbing_gear_ropework';
    final String _climbingGearRunnerTableName = 'climbing_gear_runner';

    
    

    DatabaseService._constructor() {
        sqfliteFfiInit();
        databaseFactory = databaseFactoryFfi;
    }


    // Get database instance
    Future<Database> get database async {
        if (_db != null) return _db!;
        _db = await getDatabase();
        return _db!;
    }

    
    Future<Database> getDatabase() async {
        
        final dbDirPath = await getDatabasesPath();
        final dbpath = join(dbDirPath, 'triplist.db');
        if (kDebugMode) {
            print('Database location: $dbpath');
        }
        final database = await openDatabase(
            dbpath,
            
            );
        return database;
    }


    Future<void> addMasterGear(
        String name,
        String type, // type in ('climbing')
        int qty,
        int weightTg, // weight in tenths of a gram
        int priceCents,
        ) async {
            final db = await DatabaseService.instance.database;
            await db.insert(
                DatabaseService.instance._masterGearTableName,
                {
                    'name': name,
                    'type': type,
                    'qty': qty,
                    'weight_tg': weightTg,
                    'price_cents': priceCents,
                },
            );
        }
}




