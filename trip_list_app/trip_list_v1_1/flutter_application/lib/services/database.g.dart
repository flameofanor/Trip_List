// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MasterGearTable extends MasterGear
    with TableInfo<$MasterGearTable, MasterGearData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MasterGearTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<int> qty = GeneratedColumn<int>(
    'qty',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _weightTgMeta = const VerificationMeta(
    'weightTg',
  );
  @override
  late final GeneratedColumn<int> weightTg = GeneratedColumn<int>(
    'weight_tg',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _priceCentsMeta = const VerificationMeta(
    'priceCents',
  );
  @override
  late final GeneratedColumn<int> priceCents = GeneratedColumn<int>(
    'price_cents',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    itemId,
    name,
    type,
    qty,
    weightTg,
    priceCents,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'master_gear';
  @override
  VerificationContext validateIntegrity(
    Insertable<MasterGearData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
        _qtyMeta,
        qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta),
      );
    }
    if (data.containsKey('weight_tg')) {
      context.handle(
        _weightTgMeta,
        weightTg.isAcceptableOrUnknown(data['weight_tg']!, _weightTgMeta),
      );
    }
    if (data.containsKey('price_cents')) {
      context.handle(
        _priceCentsMeta,
        priceCents.isAcceptableOrUnknown(data['price_cents']!, _priceCentsMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  MasterGearData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MasterGearData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      qty:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}qty'],
          )!,
      weightTg:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}weight_tg'],
          )!,
      priceCents:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}price_cents'],
          )!,
    );
  }

  @override
  $MasterGearTable createAlias(String alias) {
    return $MasterGearTable(attachedDatabase, alias);
  }
}

class MasterGearData extends DataClass implements Insertable<MasterGearData> {
  final int itemId;
  final String name;
  final String type;
  final int qty;
  final int weightTg;
  final int priceCents;
  const MasterGearData({
    required this.itemId,
    required this.name,
    required this.type,
    required this.qty,
    required this.weightTg,
    required this.priceCents,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['qty'] = Variable<int>(qty);
    map['weight_tg'] = Variable<int>(weightTg);
    map['price_cents'] = Variable<int>(priceCents);
    return map;
  }

  MasterGearCompanion toCompanion(bool nullToAbsent) {
    return MasterGearCompanion(
      itemId: Value(itemId),
      name: Value(name),
      type: Value(type),
      qty: Value(qty),
      weightTg: Value(weightTg),
      priceCents: Value(priceCents),
    );
  }

  factory MasterGearData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MasterGearData(
      itemId: serializer.fromJson<int>(json['itemId']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      qty: serializer.fromJson<int>(json['qty']),
      weightTg: serializer.fromJson<int>(json['weightTg']),
      priceCents: serializer.fromJson<int>(json['priceCents']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'qty': serializer.toJson<int>(qty),
      'weightTg': serializer.toJson<int>(weightTg),
      'priceCents': serializer.toJson<int>(priceCents),
    };
  }

  MasterGearData copyWith({
    int? itemId,
    String? name,
    String? type,
    int? qty,
    int? weightTg,
    int? priceCents,
  }) => MasterGearData(
    itemId: itemId ?? this.itemId,
    name: name ?? this.name,
    type: type ?? this.type,
    qty: qty ?? this.qty,
    weightTg: weightTg ?? this.weightTg,
    priceCents: priceCents ?? this.priceCents,
  );
  MasterGearData copyWithCompanion(MasterGearCompanion data) {
    return MasterGearData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      qty: data.qty.present ? data.qty.value : this.qty,
      weightTg: data.weightTg.present ? data.weightTg.value : this.weightTg,
      priceCents:
          data.priceCents.present ? data.priceCents.value : this.priceCents,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MasterGearData(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('qty: $qty, ')
          ..write('weightTg: $weightTg, ')
          ..write('priceCents: $priceCents')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(itemId, name, type, qty, weightTg, priceCents);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterGearData &&
          other.itemId == this.itemId &&
          other.name == this.name &&
          other.type == this.type &&
          other.qty == this.qty &&
          other.weightTg == this.weightTg &&
          other.priceCents == this.priceCents);
}

class MasterGearCompanion extends UpdateCompanion<MasterGearData> {
  final Value<int> itemId;
  final Value<String> name;
  final Value<String> type;
  final Value<int> qty;
  final Value<int> weightTg;
  final Value<int> priceCents;
  const MasterGearCompanion({
    this.itemId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.qty = const Value.absent(),
    this.weightTg = const Value.absent(),
    this.priceCents = const Value.absent(),
  });
  MasterGearCompanion.insert({
    this.itemId = const Value.absent(),
    required String name,
    required String type,
    this.qty = const Value.absent(),
    this.weightTg = const Value.absent(),
    this.priceCents = const Value.absent(),
  }) : name = Value(name),
       type = Value(type);
  static Insertable<MasterGearData> custom({
    Expression<int>? itemId,
    Expression<String>? name,
    Expression<String>? type,
    Expression<int>? qty,
    Expression<int>? weightTg,
    Expression<int>? priceCents,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (qty != null) 'qty': qty,
      if (weightTg != null) 'weight_tg': weightTg,
      if (priceCents != null) 'price_cents': priceCents,
    });
  }

  MasterGearCompanion copyWith({
    Value<int>? itemId,
    Value<String>? name,
    Value<String>? type,
    Value<int>? qty,
    Value<int>? weightTg,
    Value<int>? priceCents,
  }) {
    return MasterGearCompanion(
      itemId: itemId ?? this.itemId,
      name: name ?? this.name,
      type: type ?? this.type,
      qty: qty ?? this.qty,
      weightTg: weightTg ?? this.weightTg,
      priceCents: priceCents ?? this.priceCents,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (qty.present) {
      map['qty'] = Variable<int>(qty.value);
    }
    if (weightTg.present) {
      map['weight_tg'] = Variable<int>(weightTg.value);
    }
    if (priceCents.present) {
      map['price_cents'] = Variable<int>(priceCents.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterGearCompanion(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('qty: $qty, ')
          ..write('weightTg: $weightTg, ')
          ..write('priceCents: $priceCents')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MasterGearTable masterGear = $MasterGearTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [masterGear];
}

typedef $$MasterGearTableCreateCompanionBuilder =
    MasterGearCompanion Function({
      Value<int> itemId,
      required String name,
      required String type,
      Value<int> qty,
      Value<int> weightTg,
      Value<int> priceCents,
    });
typedef $$MasterGearTableUpdateCompanionBuilder =
    MasterGearCompanion Function({
      Value<int> itemId,
      Value<String> name,
      Value<String> type,
      Value<int> qty,
      Value<int> weightTg,
      Value<int> priceCents,
    });

class $$MasterGearTableFilterComposer
    extends Composer<_$AppDatabase, $MasterGearTable> {
  $$MasterGearTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weightTg => $composableBuilder(
    column: $table.weightTg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priceCents => $composableBuilder(
    column: $table.priceCents,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MasterGearTableOrderingComposer
    extends Composer<_$AppDatabase, $MasterGearTable> {
  $$MasterGearTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get qty => $composableBuilder(
    column: $table.qty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weightTg => $composableBuilder(
    column: $table.weightTg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priceCents => $composableBuilder(
    column: $table.priceCents,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MasterGearTableAnnotationComposer
    extends Composer<_$AppDatabase, $MasterGearTable> {
  $$MasterGearTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<int> get weightTg =>
      $composableBuilder(column: $table.weightTg, builder: (column) => column);

  GeneratedColumn<int> get priceCents => $composableBuilder(
    column: $table.priceCents,
    builder: (column) => column,
  );
}

class $$MasterGearTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MasterGearTable,
          MasterGearData,
          $$MasterGearTableFilterComposer,
          $$MasterGearTableOrderingComposer,
          $$MasterGearTableAnnotationComposer,
          $$MasterGearTableCreateCompanionBuilder,
          $$MasterGearTableUpdateCompanionBuilder,
          (
            MasterGearData,
            BaseReferences<_$AppDatabase, $MasterGearTable, MasterGearData>,
          ),
          MasterGearData,
          PrefetchHooks Function()
        > {
  $$MasterGearTableTableManager(_$AppDatabase db, $MasterGearTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$MasterGearTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$MasterGearTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$MasterGearTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> qty = const Value.absent(),
                Value<int> weightTg = const Value.absent(),
                Value<int> priceCents = const Value.absent(),
              }) => MasterGearCompanion(
                itemId: itemId,
                name: name,
                type: type,
                qty: qty,
                weightTg: weightTg,
                priceCents: priceCents,
              ),
          createCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                required String name,
                required String type,
                Value<int> qty = const Value.absent(),
                Value<int> weightTg = const Value.absent(),
                Value<int> priceCents = const Value.absent(),
              }) => MasterGearCompanion.insert(
                itemId: itemId,
                name: name,
                type: type,
                qty: qty,
                weightTg: weightTg,
                priceCents: priceCents,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MasterGearTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MasterGearTable,
      MasterGearData,
      $$MasterGearTableFilterComposer,
      $$MasterGearTableOrderingComposer,
      $$MasterGearTableAnnotationComposer,
      $$MasterGearTableCreateCompanionBuilder,
      $$MasterGearTableUpdateCompanionBuilder,
      (
        MasterGearData,
        BaseReferences<_$AppDatabase, $MasterGearTable, MasterGearData>,
      ),
      MasterGearData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MasterGearTableTableManager get masterGear =>
      $$MasterGearTableTableManager(_db, _db.masterGear);
}
