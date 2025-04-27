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
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
    'price',
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
    quantity,
    weight,
    price,
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
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
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
      quantity:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}quantity'],
          )!,
      weight:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}weight'],
          )!,
      price:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}price'],
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
  final int quantity;
  final int weight;
  final int price;
  const MasterGearData({
    required this.itemId,
    required this.name,
    required this.type,
    required this.quantity,
    required this.weight,
    required this.price,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['quantity'] = Variable<int>(quantity);
    map['weight'] = Variable<int>(weight);
    map['price'] = Variable<int>(price);
    return map;
  }

  MasterGearCompanion toCompanion(bool nullToAbsent) {
    return MasterGearCompanion(
      itemId: Value(itemId),
      name: Value(name),
      type: Value(type),
      quantity: Value(quantity),
      weight: Value(weight),
      price: Value(price),
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
      quantity: serializer.fromJson<int>(json['quantity']),
      weight: serializer.fromJson<int>(json['weight']),
      price: serializer.fromJson<int>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'quantity': serializer.toJson<int>(quantity),
      'weight': serializer.toJson<int>(weight),
      'price': serializer.toJson<int>(price),
    };
  }

  MasterGearData copyWith({
    int? itemId,
    String? name,
    String? type,
    int? quantity,
    int? weight,
    int? price,
  }) => MasterGearData(
    itemId: itemId ?? this.itemId,
    name: name ?? this.name,
    type: type ?? this.type,
    quantity: quantity ?? this.quantity,
    weight: weight ?? this.weight,
    price: price ?? this.price,
  );
  MasterGearData copyWithCompanion(MasterGearCompanion data) {
    return MasterGearData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      weight: data.weight.present ? data.weight.value : this.weight,
      price: data.price.present ? data.price.value : this.price,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MasterGearData(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('quantity: $quantity, ')
          ..write('weight: $weight, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, name, type, quantity, weight, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterGearData &&
          other.itemId == this.itemId &&
          other.name == this.name &&
          other.type == this.type &&
          other.quantity == this.quantity &&
          other.weight == this.weight &&
          other.price == this.price);
}

class MasterGearCompanion extends UpdateCompanion<MasterGearData> {
  final Value<int> itemId;
  final Value<String> name;
  final Value<String> type;
  final Value<int> quantity;
  final Value<int> weight;
  final Value<int> price;
  const MasterGearCompanion({
    this.itemId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.quantity = const Value.absent(),
    this.weight = const Value.absent(),
    this.price = const Value.absent(),
  });
  MasterGearCompanion.insert({
    this.itemId = const Value.absent(),
    required String name,
    required String type,
    this.quantity = const Value.absent(),
    this.weight = const Value.absent(),
    this.price = const Value.absent(),
  }) : name = Value(name),
       type = Value(type);
  static Insertable<MasterGearData> custom({
    Expression<int>? itemId,
    Expression<String>? name,
    Expression<String>? type,
    Expression<int>? quantity,
    Expression<int>? weight,
    Expression<int>? price,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (quantity != null) 'quantity': quantity,
      if (weight != null) 'weight': weight,
      if (price != null) 'price': price,
    });
  }

  MasterGearCompanion copyWith({
    Value<int>? itemId,
    Value<String>? name,
    Value<String>? type,
    Value<int>? quantity,
    Value<int>? weight,
    Value<int>? price,
  }) {
    return MasterGearCompanion(
      itemId: itemId ?? this.itemId,
      name: name ?? this.name,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      weight: weight ?? this.weight,
      price: price ?? this.price,
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
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterGearCompanion(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('quantity: $quantity, ')
          ..write('weight: $weight, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

class $GearNeedsRepairTable extends GearNeedsRepair
    with TableInfo<$GearNeedsRepairTable, GearNeedsRepairData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GearNeedsRepairTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _repairIdMeta = const VerificationMeta(
    'repairId',
  );
  @override
  late final GeneratedColumn<int> repairId = GeneratedColumn<int>(
    'repair_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES master_gear (item_id)',
    ),
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
  static const VerificationMeta _usableMeta = const VerificationMeta('usable');
  @override
  late final GeneratedColumn<int> usable = GeneratedColumn<int>(
    'usable',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [repairId, itemId, type, usable, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gear_needs_repair';
  @override
  VerificationContext validateIntegrity(
    Insertable<GearNeedsRepairData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('repair_id')) {
      context.handle(
        _repairIdMeta,
        repairId.isAcceptableOrUnknown(data['repair_id']!, _repairIdMeta),
      );
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('usable')) {
      context.handle(
        _usableMeta,
        usable.isAcceptableOrUnknown(data['usable']!, _usableMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {repairId};
  @override
  GearNeedsRepairData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GearNeedsRepairData(
      repairId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}repair_id'],
          )!,
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      usable:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}usable'],
          )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $GearNeedsRepairTable createAlias(String alias) {
    return $GearNeedsRepairTable(attachedDatabase, alias);
  }
}

class GearNeedsRepairData extends DataClass
    implements Insertable<GearNeedsRepairData> {
  final int repairId;
  final int itemId;
  final String type;
  final int usable;
  final String? note;
  const GearNeedsRepairData({
    required this.repairId,
    required this.itemId,
    required this.type,
    required this.usable,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['repair_id'] = Variable<int>(repairId);
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['usable'] = Variable<int>(usable);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  GearNeedsRepairCompanion toCompanion(bool nullToAbsent) {
    return GearNeedsRepairCompanion(
      repairId: Value(repairId),
      itemId: Value(itemId),
      type: Value(type),
      usable: Value(usable),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory GearNeedsRepairData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GearNeedsRepairData(
      repairId: serializer.fromJson<int>(json['repairId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      usable: serializer.fromJson<int>(json['usable']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'repairId': serializer.toJson<int>(repairId),
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'usable': serializer.toJson<int>(usable),
      'note': serializer.toJson<String?>(note),
    };
  }

  GearNeedsRepairData copyWith({
    int? repairId,
    int? itemId,
    String? type,
    int? usable,
    Value<String?> note = const Value.absent(),
  }) => GearNeedsRepairData(
    repairId: repairId ?? this.repairId,
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    usable: usable ?? this.usable,
    note: note.present ? note.value : this.note,
  );
  GearNeedsRepairData copyWithCompanion(GearNeedsRepairCompanion data) {
    return GearNeedsRepairData(
      repairId: data.repairId.present ? data.repairId.value : this.repairId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      usable: data.usable.present ? data.usable.value : this.usable,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GearNeedsRepairData(')
          ..write('repairId: $repairId, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('usable: $usable, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(repairId, itemId, type, usable, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GearNeedsRepairData &&
          other.repairId == this.repairId &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.usable == this.usable &&
          other.note == this.note);
}

class GearNeedsRepairCompanion extends UpdateCompanion<GearNeedsRepairData> {
  final Value<int> repairId;
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> usable;
  final Value<String?> note;
  const GearNeedsRepairCompanion({
    this.repairId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.usable = const Value.absent(),
    this.note = const Value.absent(),
  });
  GearNeedsRepairCompanion.insert({
    this.repairId = const Value.absent(),
    required int itemId,
    required String type,
    this.usable = const Value.absent(),
    this.note = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<GearNeedsRepairData> custom({
    Expression<int>? repairId,
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? usable,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (repairId != null) 'repair_id': repairId,
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (usable != null) 'usable': usable,
      if (note != null) 'note': note,
    });
  }

  GearNeedsRepairCompanion copyWith({
    Value<int>? repairId,
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? usable,
    Value<String?>? note,
  }) {
    return GearNeedsRepairCompanion(
      repairId: repairId ?? this.repairId,
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      usable: usable ?? this.usable,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (repairId.present) {
      map['repair_id'] = Variable<int>(repairId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (usable.present) {
      map['usable'] = Variable<int>(usable.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GearNeedsRepairCompanion(')
          ..write('repairId: $repairId, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('usable: $usable, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $GearNotesTable extends GearNotes
    with TableInfo<$GearNotesTable, GearNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GearNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES master_gear (item_id)',
    ),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gear_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<GearNote> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  GearNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GearNote(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $GearNotesTable createAlias(String alias) {
    return $GearNotesTable(attachedDatabase, alias);
  }
}

class GearNote extends DataClass implements Insertable<GearNote> {
  final int itemId;
  final String? note;
  const GearNote({required this.itemId, this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  GearNotesCompanion toCompanion(bool nullToAbsent) {
    return GearNotesCompanion(
      itemId: Value(itemId),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory GearNote.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GearNote(
      itemId: serializer.fromJson<int>(json['itemId']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'note': serializer.toJson<String?>(note),
    };
  }

  GearNote copyWith({
    int? itemId,
    Value<String?> note = const Value.absent(),
  }) => GearNote(
    itemId: itemId ?? this.itemId,
    note: note.present ? note.value : this.note,
  );
  GearNote copyWithCompanion(GearNotesCompanion data) {
    return GearNote(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GearNote(')
          ..write('itemId: $itemId, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GearNote &&
          other.itemId == this.itemId &&
          other.note == this.note);
}

class GearNotesCompanion extends UpdateCompanion<GearNote> {
  final Value<int> itemId;
  final Value<String?> note;
  final Value<int> rowid;
  const GearNotesCompanion({
    this.itemId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GearNotesCompanion.insert({
    required int itemId,
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId);
  static Insertable<GearNote> custom({
    Expression<int>? itemId,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GearNotesCompanion copyWith({
    Value<int>? itemId,
    Value<String?>? note,
    Value<int>? rowid,
  }) {
    return GearNotesCompanion(
      itemId: itemId ?? this.itemId,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GearNotesCompanion(')
          ..write('itemId: $itemId, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearTable extends ClimbingGear
    with TableInfo<$ClimbingGearTable, ClimbingGearData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES master_gear (item_id)',
    ),
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
  @override
  List<GeneratedColumn> get $columns => [itemId, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearData> instance, {
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
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  ClimbingGearData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
    );
  }

  @override
  $ClimbingGearTable createAlias(String alias) {
    return $ClimbingGearTable(attachedDatabase, alias);
  }
}

class ClimbingGearData extends DataClass
    implements Insertable<ClimbingGearData> {
  final int itemId;
  final String type;
  const ClimbingGearData({required this.itemId, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    return map;
  }

  ClimbingGearCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearCompanion(itemId: Value(itemId), type: Value(type));
  }

  factory ClimbingGearData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
    };
  }

  ClimbingGearData copyWith({int? itemId, String? type}) =>
      ClimbingGearData(itemId: itemId ?? this.itemId, type: type ?? this.type);
  ClimbingGearData copyWithCompanion(ClimbingGearCompanion data) {
    return ClimbingGearData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearData &&
          other.itemId == this.itemId &&
          other.type == this.type);
}

class ClimbingGearCompanion extends UpdateCompanion<ClimbingGearData> {
  final Value<int> itemId;
  final Value<String> type;
  const ClimbingGearCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
  });
  ClimbingGearCompanion.insert({
    this.itemId = const Value.absent(),
    required String type,
  }) : type = Value(type);
  static Insertable<ClimbingGearData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
    });
  }

  ClimbingGearCompanion copyWith({Value<int>? itemId, Value<String>? type}) {
    return ClimbingGearCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearHardwareTable extends ClimbingGearHardware
    with TableInfo<$ClimbingGearHardwareTable, ClimbingGearHardwareData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearHardwareTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _materialMeta = const VerificationMeta(
    'material',
  );
  @override
  late final GeneratedColumn<String> material = GeneratedColumn<String>(
    'material',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lockingMeta = const VerificationMeta(
    'locking',
  );
  @override
  late final GeneratedColumn<int> locking = GeneratedColumn<int>(
    'locking',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, material, locking, size];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_hardware';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearHardwareData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('material')) {
      context.handle(
        _materialMeta,
        material.isAcceptableOrUnknown(data['material']!, _materialMeta),
      );
    } else if (isInserting) {
      context.missing(_materialMeta);
    }
    if (data.containsKey('locking')) {
      context.handle(
        _lockingMeta,
        locking.isAcceptableOrUnknown(data['locking']!, _lockingMeta),
      );
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearHardwareData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearHardwareData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      material:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}material'],
          )!,
      locking:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}locking'],
          )!,
      size:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}size'],
          )!,
    );
  }

  @override
  $ClimbingGearHardwareTable createAlias(String alias) {
    return $ClimbingGearHardwareTable(attachedDatabase, alias);
  }
}

class ClimbingGearHardwareData extends DataClass
    implements Insertable<ClimbingGearHardwareData> {
  final int itemId;
  final String type;
  final String material;
  final int locking;
  final int size;
  const ClimbingGearHardwareData({
    required this.itemId,
    required this.type,
    required this.material,
    required this.locking,
    required this.size,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['material'] = Variable<String>(material);
    map['locking'] = Variable<int>(locking);
    map['size'] = Variable<int>(size);
    return map;
  }

  ClimbingGearHardwareCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearHardwareCompanion(
      itemId: Value(itemId),
      type: Value(type),
      material: Value(material),
      locking: Value(locking),
      size: Value(size),
    );
  }

  factory ClimbingGearHardwareData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearHardwareData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      material: serializer.fromJson<String>(json['material']),
      locking: serializer.fromJson<int>(json['locking']),
      size: serializer.fromJson<int>(json['size']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'material': serializer.toJson<String>(material),
      'locking': serializer.toJson<int>(locking),
      'size': serializer.toJson<int>(size),
    };
  }

  ClimbingGearHardwareData copyWith({
    int? itemId,
    String? type,
    String? material,
    int? locking,
    int? size,
  }) => ClimbingGearHardwareData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    material: material ?? this.material,
    locking: locking ?? this.locking,
    size: size ?? this.size,
  );
  ClimbingGearHardwareData copyWithCompanion(
    ClimbingGearHardwareCompanion data,
  ) {
    return ClimbingGearHardwareData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      material: data.material.present ? data.material.value : this.material,
      locking: data.locking.present ? data.locking.value : this.locking,
      size: data.size.present ? data.size.value : this.size,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearHardwareData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('material: $material, ')
          ..write('locking: $locking, ')
          ..write('size: $size')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, material, locking, size);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearHardwareData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.material == this.material &&
          other.locking == this.locking &&
          other.size == this.size);
}

class ClimbingGearHardwareCompanion
    extends UpdateCompanion<ClimbingGearHardwareData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<String> material;
  final Value<int> locking;
  final Value<int> size;
  final Value<int> rowid;
  const ClimbingGearHardwareCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.material = const Value.absent(),
    this.locking = const Value.absent(),
    this.size = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearHardwareCompanion.insert({
    required int itemId,
    required String type,
    required String material,
    this.locking = const Value.absent(),
    this.size = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type),
       material = Value(material);
  static Insertable<ClimbingGearHardwareData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<String>? material,
    Expression<int>? locking,
    Expression<int>? size,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (material != null) 'material': material,
      if (locking != null) 'locking': locking,
      if (size != null) 'size': size,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearHardwareCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<String>? material,
    Value<int>? locking,
    Value<int>? size,
    Value<int>? rowid,
  }) {
    return ClimbingGearHardwareCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      material: material ?? this.material,
      locking: locking ?? this.locking,
      size: size ?? this.size,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (material.present) {
      map['material'] = Variable<String>(material.value);
    }
    if (locking.present) {
      map['locking'] = Variable<int>(locking.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearHardwareCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('material: $material, ')
          ..write('locking: $locking, ')
          ..write('size: $size, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearIceaxeTable extends ClimbingGearIceaxe
    with TableInfo<$ClimbingGearIceaxeTable, ClimbingGearIceaxeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearIceaxeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _lengthCmMeta = const VerificationMeta(
    'lengthCm',
  );
  @override
  late final GeneratedColumn<int> lengthCm = GeneratedColumn<int>(
    'length_cm',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _slopeMeta = const VerificationMeta('slope');
  @override
  late final GeneratedColumn<int> slope = GeneratedColumn<int>(
    'slope',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _mixedMeta = const VerificationMeta('mixed');
  @override
  late final GeneratedColumn<int> mixed = GeneratedColumn<int>(
    'mixed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, lengthCm, slope, mixed];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_iceaxe';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearIceaxeData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('length_cm')) {
      context.handle(
        _lengthCmMeta,
        lengthCm.isAcceptableOrUnknown(data['length_cm']!, _lengthCmMeta),
      );
    }
    if (data.containsKey('slope')) {
      context.handle(
        _slopeMeta,
        slope.isAcceptableOrUnknown(data['slope']!, _slopeMeta),
      );
    }
    if (data.containsKey('mixed')) {
      context.handle(
        _mixedMeta,
        mixed.isAcceptableOrUnknown(data['mixed']!, _mixedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearIceaxeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearIceaxeData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      lengthCm:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}length_cm'],
          )!,
      slope:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}slope'],
          )!,
      mixed:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}mixed'],
          )!,
    );
  }

  @override
  $ClimbingGearIceaxeTable createAlias(String alias) {
    return $ClimbingGearIceaxeTable(attachedDatabase, alias);
  }
}

class ClimbingGearIceaxeData extends DataClass
    implements Insertable<ClimbingGearIceaxeData> {
  final int itemId;
  final String type;
  final int lengthCm;
  final int slope;
  final int mixed;
  const ClimbingGearIceaxeData({
    required this.itemId,
    required this.type,
    required this.lengthCm,
    required this.slope,
    required this.mixed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['length_cm'] = Variable<int>(lengthCm);
    map['slope'] = Variable<int>(slope);
    map['mixed'] = Variable<int>(mixed);
    return map;
  }

  ClimbingGearIceaxeCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearIceaxeCompanion(
      itemId: Value(itemId),
      type: Value(type),
      lengthCm: Value(lengthCm),
      slope: Value(slope),
      mixed: Value(mixed),
    );
  }

  factory ClimbingGearIceaxeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearIceaxeData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      lengthCm: serializer.fromJson<int>(json['lengthCm']),
      slope: serializer.fromJson<int>(json['slope']),
      mixed: serializer.fromJson<int>(json['mixed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'lengthCm': serializer.toJson<int>(lengthCm),
      'slope': serializer.toJson<int>(slope),
      'mixed': serializer.toJson<int>(mixed),
    };
  }

  ClimbingGearIceaxeData copyWith({
    int? itemId,
    String? type,
    int? lengthCm,
    int? slope,
    int? mixed,
  }) => ClimbingGearIceaxeData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    lengthCm: lengthCm ?? this.lengthCm,
    slope: slope ?? this.slope,
    mixed: mixed ?? this.mixed,
  );
  ClimbingGearIceaxeData copyWithCompanion(ClimbingGearIceaxeCompanion data) {
    return ClimbingGearIceaxeData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      lengthCm: data.lengthCm.present ? data.lengthCm.value : this.lengthCm,
      slope: data.slope.present ? data.slope.value : this.slope,
      mixed: data.mixed.present ? data.mixed.value : this.mixed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearIceaxeData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthCm: $lengthCm, ')
          ..write('slope: $slope, ')
          ..write('mixed: $mixed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, lengthCm, slope, mixed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearIceaxeData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.lengthCm == this.lengthCm &&
          other.slope == this.slope &&
          other.mixed == this.mixed);
}

class ClimbingGearIceaxeCompanion
    extends UpdateCompanion<ClimbingGearIceaxeData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> lengthCm;
  final Value<int> slope;
  final Value<int> mixed;
  final Value<int> rowid;
  const ClimbingGearIceaxeCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.lengthCm = const Value.absent(),
    this.slope = const Value.absent(),
    this.mixed = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearIceaxeCompanion.insert({
    required int itemId,
    required String type,
    this.lengthCm = const Value.absent(),
    this.slope = const Value.absent(),
    this.mixed = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearIceaxeData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? lengthCm,
    Expression<int>? slope,
    Expression<int>? mixed,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (lengthCm != null) 'length_cm': lengthCm,
      if (slope != null) 'slope': slope,
      if (mixed != null) 'mixed': mixed,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearIceaxeCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? lengthCm,
    Value<int>? slope,
    Value<int>? mixed,
    Value<int>? rowid,
  }) {
    return ClimbingGearIceaxeCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      lengthCm: lengthCm ?? this.lengthCm,
      slope: slope ?? this.slope,
      mixed: mixed ?? this.mixed,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (lengthCm.present) {
      map['length_cm'] = Variable<int>(lengthCm.value);
    }
    if (slope.present) {
      map['slope'] = Variable<int>(slope.value);
    }
    if (mixed.present) {
      map['mixed'] = Variable<int>(mixed.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearIceaxeCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthCm: $lengthCm, ')
          ..write('slope: $slope, ')
          ..write('mixed: $mixed, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearPersonalTable extends ClimbingGearPersonal
    with TableInfo<$ClimbingGearPersonalTable, ClimbingGearPersonalData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearPersonalTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  @override
  List<GeneratedColumn> get $columns => [itemId, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_personal';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearPersonalData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearPersonalData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearPersonalData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
    );
  }

  @override
  $ClimbingGearPersonalTable createAlias(String alias) {
    return $ClimbingGearPersonalTable(attachedDatabase, alias);
  }
}

class ClimbingGearPersonalData extends DataClass
    implements Insertable<ClimbingGearPersonalData> {
  final int itemId;
  final String type;
  const ClimbingGearPersonalData({required this.itemId, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    return map;
  }

  ClimbingGearPersonalCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearPersonalCompanion(
      itemId: Value(itemId),
      type: Value(type),
    );
  }

  factory ClimbingGearPersonalData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearPersonalData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
    };
  }

  ClimbingGearPersonalData copyWith({int? itemId, String? type}) =>
      ClimbingGearPersonalData(
        itemId: itemId ?? this.itemId,
        type: type ?? this.type,
      );
  ClimbingGearPersonalData copyWithCompanion(
    ClimbingGearPersonalCompanion data,
  ) {
    return ClimbingGearPersonalData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearPersonalData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearPersonalData &&
          other.itemId == this.itemId &&
          other.type == this.type);
}

class ClimbingGearPersonalCompanion
    extends UpdateCompanion<ClimbingGearPersonalData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> rowid;
  const ClimbingGearPersonalCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearPersonalCompanion.insert({
    required int itemId,
    required String type,
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearPersonalData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearPersonalCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? rowid,
  }) {
    return ClimbingGearPersonalCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearPersonalCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearPersonalShoesTable extends ClimbingGearPersonalShoes
    with TableInfo<$ClimbingGearPersonalShoesTable, ClimbingGearPersonalShoe> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearPersonalShoesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _shoeIdMeta = const VerificationMeta('shoeId');
  @override
  late final GeneratedColumn<int> shoeId = GeneratedColumn<int>(
    'shoe_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _conditionMeta = const VerificationMeta(
    'condition',
  );
  @override
  late final GeneratedColumn<int> condition = GeneratedColumn<int>(
    'condition',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _resolesMeta = const VerificationMeta(
    'resoles',
  );
  @override
  late final GeneratedColumn<int> resoles = GeneratedColumn<int>(
    'resoles',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _rubberTypeMeta = const VerificationMeta(
    'rubberType',
  );
  @override
  late final GeneratedColumn<String> rubberType = GeneratedColumn<String>(
    'rubber_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tradScoreMeta = const VerificationMeta(
    'tradScore',
  );
  @override
  late final GeneratedColumn<int> tradScore = GeneratedColumn<int>(
    'trad_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _sportScoreMeta = const VerificationMeta(
    'sportScore',
  );
  @override
  late final GeneratedColumn<int> sportScore = GeneratedColumn<int>(
    'sport_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _crackScoreMeta = const VerificationMeta(
    'crackScore',
  );
  @override
  late final GeneratedColumn<int> crackScore = GeneratedColumn<int>(
    'crack_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _hikingScoreMeta = const VerificationMeta(
    'hikingScore',
  );
  @override
  late final GeneratedColumn<int> hikingScore = GeneratedColumn<int>(
    'hiking_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _agressiveScoreMeta = const VerificationMeta(
    'agressiveScore',
  );
  @override
  late final GeneratedColumn<int> agressiveScore = GeneratedColumn<int>(
    'agressive_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    shoeId,
    itemId,
    type,
    condition,
    resoles,
    rubberType,
    tradScore,
    sportScore,
    crackScore,
    hikingScore,
    agressiveScore,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_personal_shoes';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearPersonalShoe> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('shoe_id')) {
      context.handle(
        _shoeIdMeta,
        shoeId.isAcceptableOrUnknown(data['shoe_id']!, _shoeIdMeta),
      );
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('condition')) {
      context.handle(
        _conditionMeta,
        condition.isAcceptableOrUnknown(data['condition']!, _conditionMeta),
      );
    }
    if (data.containsKey('resoles')) {
      context.handle(
        _resolesMeta,
        resoles.isAcceptableOrUnknown(data['resoles']!, _resolesMeta),
      );
    }
    if (data.containsKey('rubber_type')) {
      context.handle(
        _rubberTypeMeta,
        rubberType.isAcceptableOrUnknown(data['rubber_type']!, _rubberTypeMeta),
      );
    }
    if (data.containsKey('trad_score')) {
      context.handle(
        _tradScoreMeta,
        tradScore.isAcceptableOrUnknown(data['trad_score']!, _tradScoreMeta),
      );
    }
    if (data.containsKey('sport_score')) {
      context.handle(
        _sportScoreMeta,
        sportScore.isAcceptableOrUnknown(data['sport_score']!, _sportScoreMeta),
      );
    }
    if (data.containsKey('crack_score')) {
      context.handle(
        _crackScoreMeta,
        crackScore.isAcceptableOrUnknown(data['crack_score']!, _crackScoreMeta),
      );
    }
    if (data.containsKey('hiking_score')) {
      context.handle(
        _hikingScoreMeta,
        hikingScore.isAcceptableOrUnknown(
          data['hiking_score']!,
          _hikingScoreMeta,
        ),
      );
    }
    if (data.containsKey('agressive_score')) {
      context.handle(
        _agressiveScoreMeta,
        agressiveScore.isAcceptableOrUnknown(
          data['agressive_score']!,
          _agressiveScoreMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {shoeId};
  @override
  ClimbingGearPersonalShoe map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearPersonalShoe(
      shoeId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}shoe_id'],
          )!,
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      condition:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}condition'],
          )!,
      resoles:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}resoles'],
          )!,
      rubberType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rubber_type'],
      ),
      tradScore:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}trad_score'],
          )!,
      sportScore:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}sport_score'],
          )!,
      crackScore:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}crack_score'],
          )!,
      hikingScore:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}hiking_score'],
          )!,
      agressiveScore:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}agressive_score'],
          )!,
    );
  }

  @override
  $ClimbingGearPersonalShoesTable createAlias(String alias) {
    return $ClimbingGearPersonalShoesTable(attachedDatabase, alias);
  }
}

class ClimbingGearPersonalShoe extends DataClass
    implements Insertable<ClimbingGearPersonalShoe> {
  final int shoeId;
  final int itemId;
  final String type;
  final int condition;
  final int resoles;
  final String? rubberType;
  final int tradScore;
  final int sportScore;
  final int crackScore;
  final int hikingScore;
  final int agressiveScore;
  const ClimbingGearPersonalShoe({
    required this.shoeId,
    required this.itemId,
    required this.type,
    required this.condition,
    required this.resoles,
    this.rubberType,
    required this.tradScore,
    required this.sportScore,
    required this.crackScore,
    required this.hikingScore,
    required this.agressiveScore,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['shoe_id'] = Variable<int>(shoeId);
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['condition'] = Variable<int>(condition);
    map['resoles'] = Variable<int>(resoles);
    if (!nullToAbsent || rubberType != null) {
      map['rubber_type'] = Variable<String>(rubberType);
    }
    map['trad_score'] = Variable<int>(tradScore);
    map['sport_score'] = Variable<int>(sportScore);
    map['crack_score'] = Variable<int>(crackScore);
    map['hiking_score'] = Variable<int>(hikingScore);
    map['agressive_score'] = Variable<int>(agressiveScore);
    return map;
  }

  ClimbingGearPersonalShoesCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearPersonalShoesCompanion(
      shoeId: Value(shoeId),
      itemId: Value(itemId),
      type: Value(type),
      condition: Value(condition),
      resoles: Value(resoles),
      rubberType:
          rubberType == null && nullToAbsent
              ? const Value.absent()
              : Value(rubberType),
      tradScore: Value(tradScore),
      sportScore: Value(sportScore),
      crackScore: Value(crackScore),
      hikingScore: Value(hikingScore),
      agressiveScore: Value(agressiveScore),
    );
  }

  factory ClimbingGearPersonalShoe.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearPersonalShoe(
      shoeId: serializer.fromJson<int>(json['shoeId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      condition: serializer.fromJson<int>(json['condition']),
      resoles: serializer.fromJson<int>(json['resoles']),
      rubberType: serializer.fromJson<String?>(json['rubberType']),
      tradScore: serializer.fromJson<int>(json['tradScore']),
      sportScore: serializer.fromJson<int>(json['sportScore']),
      crackScore: serializer.fromJson<int>(json['crackScore']),
      hikingScore: serializer.fromJson<int>(json['hikingScore']),
      agressiveScore: serializer.fromJson<int>(json['agressiveScore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'shoeId': serializer.toJson<int>(shoeId),
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'condition': serializer.toJson<int>(condition),
      'resoles': serializer.toJson<int>(resoles),
      'rubberType': serializer.toJson<String?>(rubberType),
      'tradScore': serializer.toJson<int>(tradScore),
      'sportScore': serializer.toJson<int>(sportScore),
      'crackScore': serializer.toJson<int>(crackScore),
      'hikingScore': serializer.toJson<int>(hikingScore),
      'agressiveScore': serializer.toJson<int>(agressiveScore),
    };
  }

  ClimbingGearPersonalShoe copyWith({
    int? shoeId,
    int? itemId,
    String? type,
    int? condition,
    int? resoles,
    Value<String?> rubberType = const Value.absent(),
    int? tradScore,
    int? sportScore,
    int? crackScore,
    int? hikingScore,
    int? agressiveScore,
  }) => ClimbingGearPersonalShoe(
    shoeId: shoeId ?? this.shoeId,
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    condition: condition ?? this.condition,
    resoles: resoles ?? this.resoles,
    rubberType: rubberType.present ? rubberType.value : this.rubberType,
    tradScore: tradScore ?? this.tradScore,
    sportScore: sportScore ?? this.sportScore,
    crackScore: crackScore ?? this.crackScore,
    hikingScore: hikingScore ?? this.hikingScore,
    agressiveScore: agressiveScore ?? this.agressiveScore,
  );
  ClimbingGearPersonalShoe copyWithCompanion(
    ClimbingGearPersonalShoesCompanion data,
  ) {
    return ClimbingGearPersonalShoe(
      shoeId: data.shoeId.present ? data.shoeId.value : this.shoeId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      condition: data.condition.present ? data.condition.value : this.condition,
      resoles: data.resoles.present ? data.resoles.value : this.resoles,
      rubberType:
          data.rubberType.present ? data.rubberType.value : this.rubberType,
      tradScore: data.tradScore.present ? data.tradScore.value : this.tradScore,
      sportScore:
          data.sportScore.present ? data.sportScore.value : this.sportScore,
      crackScore:
          data.crackScore.present ? data.crackScore.value : this.crackScore,
      hikingScore:
          data.hikingScore.present ? data.hikingScore.value : this.hikingScore,
      agressiveScore:
          data.agressiveScore.present
              ? data.agressiveScore.value
              : this.agressiveScore,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearPersonalShoe(')
          ..write('shoeId: $shoeId, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('condition: $condition, ')
          ..write('resoles: $resoles, ')
          ..write('rubberType: $rubberType, ')
          ..write('tradScore: $tradScore, ')
          ..write('sportScore: $sportScore, ')
          ..write('crackScore: $crackScore, ')
          ..write('hikingScore: $hikingScore, ')
          ..write('agressiveScore: $agressiveScore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    shoeId,
    itemId,
    type,
    condition,
    resoles,
    rubberType,
    tradScore,
    sportScore,
    crackScore,
    hikingScore,
    agressiveScore,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearPersonalShoe &&
          other.shoeId == this.shoeId &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.condition == this.condition &&
          other.resoles == this.resoles &&
          other.rubberType == this.rubberType &&
          other.tradScore == this.tradScore &&
          other.sportScore == this.sportScore &&
          other.crackScore == this.crackScore &&
          other.hikingScore == this.hikingScore &&
          other.agressiveScore == this.agressiveScore);
}

class ClimbingGearPersonalShoesCompanion
    extends UpdateCompanion<ClimbingGearPersonalShoe> {
  final Value<int> shoeId;
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> condition;
  final Value<int> resoles;
  final Value<String?> rubberType;
  final Value<int> tradScore;
  final Value<int> sportScore;
  final Value<int> crackScore;
  final Value<int> hikingScore;
  final Value<int> agressiveScore;
  const ClimbingGearPersonalShoesCompanion({
    this.shoeId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.condition = const Value.absent(),
    this.resoles = const Value.absent(),
    this.rubberType = const Value.absent(),
    this.tradScore = const Value.absent(),
    this.sportScore = const Value.absent(),
    this.crackScore = const Value.absent(),
    this.hikingScore = const Value.absent(),
    this.agressiveScore = const Value.absent(),
  });
  ClimbingGearPersonalShoesCompanion.insert({
    this.shoeId = const Value.absent(),
    required int itemId,
    required String type,
    this.condition = const Value.absent(),
    this.resoles = const Value.absent(),
    this.rubberType = const Value.absent(),
    this.tradScore = const Value.absent(),
    this.sportScore = const Value.absent(),
    this.crackScore = const Value.absent(),
    this.hikingScore = const Value.absent(),
    this.agressiveScore = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearPersonalShoe> custom({
    Expression<int>? shoeId,
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? condition,
    Expression<int>? resoles,
    Expression<String>? rubberType,
    Expression<int>? tradScore,
    Expression<int>? sportScore,
    Expression<int>? crackScore,
    Expression<int>? hikingScore,
    Expression<int>? agressiveScore,
  }) {
    return RawValuesInsertable({
      if (shoeId != null) 'shoe_id': shoeId,
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (condition != null) 'condition': condition,
      if (resoles != null) 'resoles': resoles,
      if (rubberType != null) 'rubber_type': rubberType,
      if (tradScore != null) 'trad_score': tradScore,
      if (sportScore != null) 'sport_score': sportScore,
      if (crackScore != null) 'crack_score': crackScore,
      if (hikingScore != null) 'hiking_score': hikingScore,
      if (agressiveScore != null) 'agressive_score': agressiveScore,
    });
  }

  ClimbingGearPersonalShoesCompanion copyWith({
    Value<int>? shoeId,
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? condition,
    Value<int>? resoles,
    Value<String?>? rubberType,
    Value<int>? tradScore,
    Value<int>? sportScore,
    Value<int>? crackScore,
    Value<int>? hikingScore,
    Value<int>? agressiveScore,
  }) {
    return ClimbingGearPersonalShoesCompanion(
      shoeId: shoeId ?? this.shoeId,
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      condition: condition ?? this.condition,
      resoles: resoles ?? this.resoles,
      rubberType: rubberType ?? this.rubberType,
      tradScore: tradScore ?? this.tradScore,
      sportScore: sportScore ?? this.sportScore,
      crackScore: crackScore ?? this.crackScore,
      hikingScore: hikingScore ?? this.hikingScore,
      agressiveScore: agressiveScore ?? this.agressiveScore,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (shoeId.present) {
      map['shoe_id'] = Variable<int>(shoeId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (condition.present) {
      map['condition'] = Variable<int>(condition.value);
    }
    if (resoles.present) {
      map['resoles'] = Variable<int>(resoles.value);
    }
    if (rubberType.present) {
      map['rubber_type'] = Variable<String>(rubberType.value);
    }
    if (tradScore.present) {
      map['trad_score'] = Variable<int>(tradScore.value);
    }
    if (sportScore.present) {
      map['sport_score'] = Variable<int>(sportScore.value);
    }
    if (crackScore.present) {
      map['crack_score'] = Variable<int>(crackScore.value);
    }
    if (hikingScore.present) {
      map['hiking_score'] = Variable<int>(hikingScore.value);
    }
    if (agressiveScore.present) {
      map['agressive_score'] = Variable<int>(agressiveScore.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearPersonalShoesCompanion(')
          ..write('shoeId: $shoeId, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('condition: $condition, ')
          ..write('resoles: $resoles, ')
          ..write('rubberType: $rubberType, ')
          ..write('tradScore: $tradScore, ')
          ..write('sportScore: $sportScore, ')
          ..write('crackScore: $crackScore, ')
          ..write('hikingScore: $hikingScore, ')
          ..write('agressiveScore: $agressiveScore')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearProtectionTable extends ClimbingGearProtection
    with TableInfo<$ClimbingGearProtectionTable, ClimbingGearProtectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearProtectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, size];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_protection';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearProtectionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearProtectionData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearProtectionData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      size:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}size'],
          )!,
    );
  }

  @override
  $ClimbingGearProtectionTable createAlias(String alias) {
    return $ClimbingGearProtectionTable(attachedDatabase, alias);
  }
}

class ClimbingGearProtectionData extends DataClass
    implements Insertable<ClimbingGearProtectionData> {
  final int itemId;
  final String type;
  final int size;
  const ClimbingGearProtectionData({
    required this.itemId,
    required this.type,
    required this.size,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['size'] = Variable<int>(size);
    return map;
  }

  ClimbingGearProtectionCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearProtectionCompanion(
      itemId: Value(itemId),
      type: Value(type),
      size: Value(size),
    );
  }

  factory ClimbingGearProtectionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearProtectionData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      size: serializer.fromJson<int>(json['size']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'size': serializer.toJson<int>(size),
    };
  }

  ClimbingGearProtectionData copyWith({int? itemId, String? type, int? size}) =>
      ClimbingGearProtectionData(
        itemId: itemId ?? this.itemId,
        type: type ?? this.type,
        size: size ?? this.size,
      );
  ClimbingGearProtectionData copyWithCompanion(
    ClimbingGearProtectionCompanion data,
  ) {
    return ClimbingGearProtectionData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      size: data.size.present ? data.size.value : this.size,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearProtectionData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('size: $size')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, size);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearProtectionData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.size == this.size);
}

class ClimbingGearProtectionCompanion
    extends UpdateCompanion<ClimbingGearProtectionData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> size;
  final Value<int> rowid;
  const ClimbingGearProtectionCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.size = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearProtectionCompanion.insert({
    required int itemId,
    required String type,
    this.size = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearProtectionData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? size,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (size != null) 'size': size,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearProtectionCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? size,
    Value<int>? rowid,
  }) {
    return ClimbingGearProtectionCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      size: size ?? this.size,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearProtectionCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('size: $size, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearRopeTable extends ClimbingGearRope
    with TableInfo<$ClimbingGearRopeTable, ClimbingGearRopeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearRopeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _lengthMMeta = const VerificationMeta(
    'lengthM',
  );
  @override
  late final GeneratedColumn<int> lengthM = GeneratedColumn<int>(
    'length_m',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _widthTmmMeta = const VerificationMeta(
    'widthTmm',
  );
  @override
  late final GeneratedColumn<int> widthTmm = GeneratedColumn<int>(
    'width_tmm',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _dryTreatedMeta = const VerificationMeta(
    'dryTreated',
  );
  @override
  late final GeneratedColumn<int> dryTreated = GeneratedColumn<int>(
    'dry_treated',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isDynamicMeta = const VerificationMeta(
    'isDynamic',
  );
  @override
  late final GeneratedColumn<int> isDynamic = GeneratedColumn<int>(
    'is_dynamic',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _domMeta = const VerificationMeta('dom');
  @override
  late final GeneratedColumn<String> dom = GeneratedColumn<String>(
    'dom',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('2000-01-01'),
  );
  static const VerificationMeta _conditionMeta = const VerificationMeta(
    'condition',
  );
  @override
  late final GeneratedColumn<int> condition = GeneratedColumn<int>(
    'condition',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    itemId,
    type,
    lengthM,
    widthTmm,
    dryTreated,
    isDynamic,
    dom,
    condition,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_rope';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearRopeData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('length_m')) {
      context.handle(
        _lengthMMeta,
        lengthM.isAcceptableOrUnknown(data['length_m']!, _lengthMMeta),
      );
    }
    if (data.containsKey('width_tmm')) {
      context.handle(
        _widthTmmMeta,
        widthTmm.isAcceptableOrUnknown(data['width_tmm']!, _widthTmmMeta),
      );
    }
    if (data.containsKey('dry_treated')) {
      context.handle(
        _dryTreatedMeta,
        dryTreated.isAcceptableOrUnknown(data['dry_treated']!, _dryTreatedMeta),
      );
    }
    if (data.containsKey('is_dynamic')) {
      context.handle(
        _isDynamicMeta,
        isDynamic.isAcceptableOrUnknown(data['is_dynamic']!, _isDynamicMeta),
      );
    }
    if (data.containsKey('dom')) {
      context.handle(
        _domMeta,
        dom.isAcceptableOrUnknown(data['dom']!, _domMeta),
      );
    }
    if (data.containsKey('condition')) {
      context.handle(
        _conditionMeta,
        condition.isAcceptableOrUnknown(data['condition']!, _conditionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearRopeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearRopeData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      lengthM:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}length_m'],
          )!,
      widthTmm:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}width_tmm'],
          )!,
      dryTreated:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}dry_treated'],
          )!,
      isDynamic:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}is_dynamic'],
          )!,
      dom:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}dom'],
          )!,
      condition:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}condition'],
          )!,
    );
  }

  @override
  $ClimbingGearRopeTable createAlias(String alias) {
    return $ClimbingGearRopeTable(attachedDatabase, alias);
  }
}

class ClimbingGearRopeData extends DataClass
    implements Insertable<ClimbingGearRopeData> {
  final int itemId;
  final String type;
  final int lengthM;
  final int widthTmm;
  final int dryTreated;
  final int isDynamic;
  final String dom;
  final int condition;
  const ClimbingGearRopeData({
    required this.itemId,
    required this.type,
    required this.lengthM,
    required this.widthTmm,
    required this.dryTreated,
    required this.isDynamic,
    required this.dom,
    required this.condition,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['length_m'] = Variable<int>(lengthM);
    map['width_tmm'] = Variable<int>(widthTmm);
    map['dry_treated'] = Variable<int>(dryTreated);
    map['is_dynamic'] = Variable<int>(isDynamic);
    map['dom'] = Variable<String>(dom);
    map['condition'] = Variable<int>(condition);
    return map;
  }

  ClimbingGearRopeCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearRopeCompanion(
      itemId: Value(itemId),
      type: Value(type),
      lengthM: Value(lengthM),
      widthTmm: Value(widthTmm),
      dryTreated: Value(dryTreated),
      isDynamic: Value(isDynamic),
      dom: Value(dom),
      condition: Value(condition),
    );
  }

  factory ClimbingGearRopeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearRopeData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      lengthM: serializer.fromJson<int>(json['lengthM']),
      widthTmm: serializer.fromJson<int>(json['widthTmm']),
      dryTreated: serializer.fromJson<int>(json['dryTreated']),
      isDynamic: serializer.fromJson<int>(json['isDynamic']),
      dom: serializer.fromJson<String>(json['dom']),
      condition: serializer.fromJson<int>(json['condition']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'lengthM': serializer.toJson<int>(lengthM),
      'widthTmm': serializer.toJson<int>(widthTmm),
      'dryTreated': serializer.toJson<int>(dryTreated),
      'isDynamic': serializer.toJson<int>(isDynamic),
      'dom': serializer.toJson<String>(dom),
      'condition': serializer.toJson<int>(condition),
    };
  }

  ClimbingGearRopeData copyWith({
    int? itemId,
    String? type,
    int? lengthM,
    int? widthTmm,
    int? dryTreated,
    int? isDynamic,
    String? dom,
    int? condition,
  }) => ClimbingGearRopeData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    lengthM: lengthM ?? this.lengthM,
    widthTmm: widthTmm ?? this.widthTmm,
    dryTreated: dryTreated ?? this.dryTreated,
    isDynamic: isDynamic ?? this.isDynamic,
    dom: dom ?? this.dom,
    condition: condition ?? this.condition,
  );
  ClimbingGearRopeData copyWithCompanion(ClimbingGearRopeCompanion data) {
    return ClimbingGearRopeData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      lengthM: data.lengthM.present ? data.lengthM.value : this.lengthM,
      widthTmm: data.widthTmm.present ? data.widthTmm.value : this.widthTmm,
      dryTreated:
          data.dryTreated.present ? data.dryTreated.value : this.dryTreated,
      isDynamic: data.isDynamic.present ? data.isDynamic.value : this.isDynamic,
      dom: data.dom.present ? data.dom.value : this.dom,
      condition: data.condition.present ? data.condition.value : this.condition,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRopeData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthM: $lengthM, ')
          ..write('widthTmm: $widthTmm, ')
          ..write('dryTreated: $dryTreated, ')
          ..write('isDynamic: $isDynamic, ')
          ..write('dom: $dom, ')
          ..write('condition: $condition')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    itemId,
    type,
    lengthM,
    widthTmm,
    dryTreated,
    isDynamic,
    dom,
    condition,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearRopeData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.lengthM == this.lengthM &&
          other.widthTmm == this.widthTmm &&
          other.dryTreated == this.dryTreated &&
          other.isDynamic == this.isDynamic &&
          other.dom == this.dom &&
          other.condition == this.condition);
}

class ClimbingGearRopeCompanion extends UpdateCompanion<ClimbingGearRopeData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> lengthM;
  final Value<int> widthTmm;
  final Value<int> dryTreated;
  final Value<int> isDynamic;
  final Value<String> dom;
  final Value<int> condition;
  final Value<int> rowid;
  const ClimbingGearRopeCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.lengthM = const Value.absent(),
    this.widthTmm = const Value.absent(),
    this.dryTreated = const Value.absent(),
    this.isDynamic = const Value.absent(),
    this.dom = const Value.absent(),
    this.condition = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearRopeCompanion.insert({
    required int itemId,
    required String type,
    this.lengthM = const Value.absent(),
    this.widthTmm = const Value.absent(),
    this.dryTreated = const Value.absent(),
    this.isDynamic = const Value.absent(),
    this.dom = const Value.absent(),
    this.condition = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearRopeData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? lengthM,
    Expression<int>? widthTmm,
    Expression<int>? dryTreated,
    Expression<int>? isDynamic,
    Expression<String>? dom,
    Expression<int>? condition,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (lengthM != null) 'length_m': lengthM,
      if (widthTmm != null) 'width_tmm': widthTmm,
      if (dryTreated != null) 'dry_treated': dryTreated,
      if (isDynamic != null) 'is_dynamic': isDynamic,
      if (dom != null) 'dom': dom,
      if (condition != null) 'condition': condition,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearRopeCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? lengthM,
    Value<int>? widthTmm,
    Value<int>? dryTreated,
    Value<int>? isDynamic,
    Value<String>? dom,
    Value<int>? condition,
    Value<int>? rowid,
  }) {
    return ClimbingGearRopeCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      lengthM: lengthM ?? this.lengthM,
      widthTmm: widthTmm ?? this.widthTmm,
      dryTreated: dryTreated ?? this.dryTreated,
      isDynamic: isDynamic ?? this.isDynamic,
      dom: dom ?? this.dom,
      condition: condition ?? this.condition,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (lengthM.present) {
      map['length_m'] = Variable<int>(lengthM.value);
    }
    if (widthTmm.present) {
      map['width_tmm'] = Variable<int>(widthTmm.value);
    }
    if (dryTreated.present) {
      map['dry_treated'] = Variable<int>(dryTreated.value);
    }
    if (isDynamic.present) {
      map['is_dynamic'] = Variable<int>(isDynamic.value);
    }
    if (dom.present) {
      map['dom'] = Variable<String>(dom.value);
    }
    if (condition.present) {
      map['condition'] = Variable<int>(condition.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRopeCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthM: $lengthM, ')
          ..write('widthTmm: $widthTmm, ')
          ..write('dryTreated: $dryTreated, ')
          ..write('isDynamic: $isDynamic, ')
          ..write('dom: $dom, ')
          ..write('condition: $condition, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearRopeworkTable extends ClimbingGearRopework
    with TableInfo<$ClimbingGearRopeworkTable, ClimbingGearRopeworkData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearRopeworkTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _widthMinTmmMeta = const VerificationMeta(
    'widthMinTmm',
  );
  @override
  late final GeneratedColumn<double> widthMinTmm = GeneratedColumn<double>(
    'width_min_tmm',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _widthMaxTmmMeta = const VerificationMeta(
    'widthMaxTmm',
  );
  @override
  late final GeneratedColumn<double> widthMaxTmm = GeneratedColumn<double>(
    'width_max_tmm',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _autoLockingMeta = const VerificationMeta(
    'autoLocking',
  );
  @override
  late final GeneratedColumn<int> autoLocking = GeneratedColumn<int>(
    'auto_locking',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _mechanicalDeviceMeta = const VerificationMeta(
    'mechanicalDevice',
  );
  @override
  late final GeneratedColumn<int> mechanicalDevice = GeneratedColumn<int>(
    'mechanical_device',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _doubleRopeMeta = const VerificationMeta(
    'doubleRope',
  );
  @override
  late final GeneratedColumn<int> doubleRope = GeneratedColumn<int>(
    'double_rope',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    itemId,
    type,
    widthMinTmm,
    widthMaxTmm,
    autoLocking,
    mechanicalDevice,
    doubleRope,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_ropework';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearRopeworkData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('width_min_tmm')) {
      context.handle(
        _widthMinTmmMeta,
        widthMinTmm.isAcceptableOrUnknown(
          data['width_min_tmm']!,
          _widthMinTmmMeta,
        ),
      );
    }
    if (data.containsKey('width_max_tmm')) {
      context.handle(
        _widthMaxTmmMeta,
        widthMaxTmm.isAcceptableOrUnknown(
          data['width_max_tmm']!,
          _widthMaxTmmMeta,
        ),
      );
    }
    if (data.containsKey('auto_locking')) {
      context.handle(
        _autoLockingMeta,
        autoLocking.isAcceptableOrUnknown(
          data['auto_locking']!,
          _autoLockingMeta,
        ),
      );
    }
    if (data.containsKey('mechanical_device')) {
      context.handle(
        _mechanicalDeviceMeta,
        mechanicalDevice.isAcceptableOrUnknown(
          data['mechanical_device']!,
          _mechanicalDeviceMeta,
        ),
      );
    }
    if (data.containsKey('double_rope')) {
      context.handle(
        _doubleRopeMeta,
        doubleRope.isAcceptableOrUnknown(data['double_rope']!, _doubleRopeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearRopeworkData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearRopeworkData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      widthMinTmm:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}width_min_tmm'],
          )!,
      widthMaxTmm:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}width_max_tmm'],
          )!,
      autoLocking:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}auto_locking'],
          )!,
      mechanicalDevice:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}mechanical_device'],
          )!,
      doubleRope:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}double_rope'],
          )!,
    );
  }

  @override
  $ClimbingGearRopeworkTable createAlias(String alias) {
    return $ClimbingGearRopeworkTable(attachedDatabase, alias);
  }
}

class ClimbingGearRopeworkData extends DataClass
    implements Insertable<ClimbingGearRopeworkData> {
  final int itemId;
  final String type;
  final double widthMinTmm;
  final double widthMaxTmm;
  final int autoLocking;
  final int mechanicalDevice;
  final int doubleRope;
  const ClimbingGearRopeworkData({
    required this.itemId,
    required this.type,
    required this.widthMinTmm,
    required this.widthMaxTmm,
    required this.autoLocking,
    required this.mechanicalDevice,
    required this.doubleRope,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['width_min_tmm'] = Variable<double>(widthMinTmm);
    map['width_max_tmm'] = Variable<double>(widthMaxTmm);
    map['auto_locking'] = Variable<int>(autoLocking);
    map['mechanical_device'] = Variable<int>(mechanicalDevice);
    map['double_rope'] = Variable<int>(doubleRope);
    return map;
  }

  ClimbingGearRopeworkCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearRopeworkCompanion(
      itemId: Value(itemId),
      type: Value(type),
      widthMinTmm: Value(widthMinTmm),
      widthMaxTmm: Value(widthMaxTmm),
      autoLocking: Value(autoLocking),
      mechanicalDevice: Value(mechanicalDevice),
      doubleRope: Value(doubleRope),
    );
  }

  factory ClimbingGearRopeworkData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearRopeworkData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      widthMinTmm: serializer.fromJson<double>(json['widthMinTmm']),
      widthMaxTmm: serializer.fromJson<double>(json['widthMaxTmm']),
      autoLocking: serializer.fromJson<int>(json['autoLocking']),
      mechanicalDevice: serializer.fromJson<int>(json['mechanicalDevice']),
      doubleRope: serializer.fromJson<int>(json['doubleRope']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'widthMinTmm': serializer.toJson<double>(widthMinTmm),
      'widthMaxTmm': serializer.toJson<double>(widthMaxTmm),
      'autoLocking': serializer.toJson<int>(autoLocking),
      'mechanicalDevice': serializer.toJson<int>(mechanicalDevice),
      'doubleRope': serializer.toJson<int>(doubleRope),
    };
  }

  ClimbingGearRopeworkData copyWith({
    int? itemId,
    String? type,
    double? widthMinTmm,
    double? widthMaxTmm,
    int? autoLocking,
    int? mechanicalDevice,
    int? doubleRope,
  }) => ClimbingGearRopeworkData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    widthMinTmm: widthMinTmm ?? this.widthMinTmm,
    widthMaxTmm: widthMaxTmm ?? this.widthMaxTmm,
    autoLocking: autoLocking ?? this.autoLocking,
    mechanicalDevice: mechanicalDevice ?? this.mechanicalDevice,
    doubleRope: doubleRope ?? this.doubleRope,
  );
  ClimbingGearRopeworkData copyWithCompanion(
    ClimbingGearRopeworkCompanion data,
  ) {
    return ClimbingGearRopeworkData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      widthMinTmm:
          data.widthMinTmm.present ? data.widthMinTmm.value : this.widthMinTmm,
      widthMaxTmm:
          data.widthMaxTmm.present ? data.widthMaxTmm.value : this.widthMaxTmm,
      autoLocking:
          data.autoLocking.present ? data.autoLocking.value : this.autoLocking,
      mechanicalDevice:
          data.mechanicalDevice.present
              ? data.mechanicalDevice.value
              : this.mechanicalDevice,
      doubleRope:
          data.doubleRope.present ? data.doubleRope.value : this.doubleRope,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRopeworkData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('widthMinTmm: $widthMinTmm, ')
          ..write('widthMaxTmm: $widthMaxTmm, ')
          ..write('autoLocking: $autoLocking, ')
          ..write('mechanicalDevice: $mechanicalDevice, ')
          ..write('doubleRope: $doubleRope')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    itemId,
    type,
    widthMinTmm,
    widthMaxTmm,
    autoLocking,
    mechanicalDevice,
    doubleRope,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearRopeworkData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.widthMinTmm == this.widthMinTmm &&
          other.widthMaxTmm == this.widthMaxTmm &&
          other.autoLocking == this.autoLocking &&
          other.mechanicalDevice == this.mechanicalDevice &&
          other.doubleRope == this.doubleRope);
}

class ClimbingGearRopeworkCompanion
    extends UpdateCompanion<ClimbingGearRopeworkData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<double> widthMinTmm;
  final Value<double> widthMaxTmm;
  final Value<int> autoLocking;
  final Value<int> mechanicalDevice;
  final Value<int> doubleRope;
  final Value<int> rowid;
  const ClimbingGearRopeworkCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.widthMinTmm = const Value.absent(),
    this.widthMaxTmm = const Value.absent(),
    this.autoLocking = const Value.absent(),
    this.mechanicalDevice = const Value.absent(),
    this.doubleRope = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearRopeworkCompanion.insert({
    required int itemId,
    required String type,
    this.widthMinTmm = const Value.absent(),
    this.widthMaxTmm = const Value.absent(),
    this.autoLocking = const Value.absent(),
    this.mechanicalDevice = const Value.absent(),
    this.doubleRope = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearRopeworkData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<double>? widthMinTmm,
    Expression<double>? widthMaxTmm,
    Expression<int>? autoLocking,
    Expression<int>? mechanicalDevice,
    Expression<int>? doubleRope,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (widthMinTmm != null) 'width_min_tmm': widthMinTmm,
      if (widthMaxTmm != null) 'width_max_tmm': widthMaxTmm,
      if (autoLocking != null) 'auto_locking': autoLocking,
      if (mechanicalDevice != null) 'mechanical_device': mechanicalDevice,
      if (doubleRope != null) 'double_rope': doubleRope,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearRopeworkCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<double>? widthMinTmm,
    Value<double>? widthMaxTmm,
    Value<int>? autoLocking,
    Value<int>? mechanicalDevice,
    Value<int>? doubleRope,
    Value<int>? rowid,
  }) {
    return ClimbingGearRopeworkCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      widthMinTmm: widthMinTmm ?? this.widthMinTmm,
      widthMaxTmm: widthMaxTmm ?? this.widthMaxTmm,
      autoLocking: autoLocking ?? this.autoLocking,
      mechanicalDevice: mechanicalDevice ?? this.mechanicalDevice,
      doubleRope: doubleRope ?? this.doubleRope,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (widthMinTmm.present) {
      map['width_min_tmm'] = Variable<double>(widthMinTmm.value);
    }
    if (widthMaxTmm.present) {
      map['width_max_tmm'] = Variable<double>(widthMaxTmm.value);
    }
    if (autoLocking.present) {
      map['auto_locking'] = Variable<int>(autoLocking.value);
    }
    if (mechanicalDevice.present) {
      map['mechanical_device'] = Variable<int>(mechanicalDevice.value);
    }
    if (doubleRope.present) {
      map['double_rope'] = Variable<int>(doubleRope.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRopeworkCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('widthMinTmm: $widthMinTmm, ')
          ..write('widthMaxTmm: $widthMaxTmm, ')
          ..write('autoLocking: $autoLocking, ')
          ..write('mechanicalDevice: $mechanicalDevice, ')
          ..write('doubleRope: $doubleRope, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClimbingGearRunnerTable extends ClimbingGearRunner
    with TableInfo<$ClimbingGearRunnerTable, ClimbingGearRunnerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClimbingGearRunnerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES climbing_gear (item_id)',
    ),
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
  static const VerificationMeta _lengthCmMeta = const VerificationMeta(
    'lengthCm',
  );
  @override
  late final GeneratedColumn<int> lengthCm = GeneratedColumn<int>(
    'length_cm',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, lengthCm];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'climbing_gear_runner';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClimbingGearRunnerData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('length_cm')) {
      context.handle(
        _lengthCmMeta,
        lengthCm.isAcceptableOrUnknown(data['length_cm']!, _lengthCmMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClimbingGearRunnerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClimbingGearRunnerData(
      itemId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}item_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      lengthCm:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}length_cm'],
          )!,
    );
  }

  @override
  $ClimbingGearRunnerTable createAlias(String alias) {
    return $ClimbingGearRunnerTable(attachedDatabase, alias);
  }
}

class ClimbingGearRunnerData extends DataClass
    implements Insertable<ClimbingGearRunnerData> {
  final int itemId;
  final String type;
  final int lengthCm;
  const ClimbingGearRunnerData({
    required this.itemId,
    required this.type,
    required this.lengthCm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    map['length_cm'] = Variable<int>(lengthCm);
    return map;
  }

  ClimbingGearRunnerCompanion toCompanion(bool nullToAbsent) {
    return ClimbingGearRunnerCompanion(
      itemId: Value(itemId),
      type: Value(type),
      lengthCm: Value(lengthCm),
    );
  }

  factory ClimbingGearRunnerData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClimbingGearRunnerData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      lengthCm: serializer.fromJson<int>(json['lengthCm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'lengthCm': serializer.toJson<int>(lengthCm),
    };
  }

  ClimbingGearRunnerData copyWith({int? itemId, String? type, int? lengthCm}) =>
      ClimbingGearRunnerData(
        itemId: itemId ?? this.itemId,
        type: type ?? this.type,
        lengthCm: lengthCm ?? this.lengthCm,
      );
  ClimbingGearRunnerData copyWithCompanion(ClimbingGearRunnerCompanion data) {
    return ClimbingGearRunnerData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      lengthCm: data.lengthCm.present ? data.lengthCm.value : this.lengthCm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRunnerData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthCm: $lengthCm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, lengthCm);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClimbingGearRunnerData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.lengthCm == this.lengthCm);
}

class ClimbingGearRunnerCompanion
    extends UpdateCompanion<ClimbingGearRunnerData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<int> lengthCm;
  final Value<int> rowid;
  const ClimbingGearRunnerCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.lengthCm = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClimbingGearRunnerCompanion.insert({
    required int itemId,
    required String type,
    this.lengthCm = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type);
  static Insertable<ClimbingGearRunnerData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<int>? lengthCm,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (lengthCm != null) 'length_cm': lengthCm,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClimbingGearRunnerCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<int>? lengthCm,
    Value<int>? rowid,
  }) {
    return ClimbingGearRunnerCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      lengthCm: lengthCm ?? this.lengthCm,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (lengthCm.present) {
      map['length_cm'] = Variable<int>(lengthCm.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClimbingGearRunnerCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('lengthCm: $lengthCm, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MasterGearTable masterGear = $MasterGearTable(this);
  late final $GearNeedsRepairTable gearNeedsRepair = $GearNeedsRepairTable(
    this,
  );
  late final $GearNotesTable gearNotes = $GearNotesTable(this);
  late final $ClimbingGearTable climbingGear = $ClimbingGearTable(this);
  late final $ClimbingGearHardwareTable climbingGearHardware =
      $ClimbingGearHardwareTable(this);
  late final $ClimbingGearIceaxeTable climbingGearIceaxe =
      $ClimbingGearIceaxeTable(this);
  late final $ClimbingGearPersonalTable climbingGearPersonal =
      $ClimbingGearPersonalTable(this);
  late final $ClimbingGearPersonalShoesTable climbingGearPersonalShoes =
      $ClimbingGearPersonalShoesTable(this);
  late final $ClimbingGearProtectionTable climbingGearProtection =
      $ClimbingGearProtectionTable(this);
  late final $ClimbingGearRopeTable climbingGearRope = $ClimbingGearRopeTable(
    this,
  );
  late final $ClimbingGearRopeworkTable climbingGearRopework =
      $ClimbingGearRopeworkTable(this);
  late final $ClimbingGearRunnerTable climbingGearRunner =
      $ClimbingGearRunnerTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    masterGear,
    gearNeedsRepair,
    gearNotes,
    climbingGear,
    climbingGearHardware,
    climbingGearIceaxe,
    climbingGearPersonal,
    climbingGearPersonalShoes,
    climbingGearProtection,
    climbingGearRope,
    climbingGearRopework,
    climbingGearRunner,
  ];
}

typedef $$MasterGearTableCreateCompanionBuilder =
    MasterGearCompanion Function({
      Value<int> itemId,
      required String name,
      required String type,
      Value<int> quantity,
      Value<int> weight,
      Value<int> price,
    });
typedef $$MasterGearTableUpdateCompanionBuilder =
    MasterGearCompanion Function({
      Value<int> itemId,
      Value<String> name,
      Value<String> type,
      Value<int> quantity,
      Value<int> weight,
      Value<int> price,
    });

final class $$MasterGearTableReferences
    extends BaseReferences<_$AppDatabase, $MasterGearTable, MasterGearData> {
  $$MasterGearTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GearNeedsRepairTable, List<GearNeedsRepairData>>
  _gearNeedsRepairRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.gearNeedsRepair,
    aliasName: $_aliasNameGenerator(
      db.masterGear.itemId,
      db.gearNeedsRepair.itemId,
    ),
  );

  $$GearNeedsRepairTableProcessedTableManager get gearNeedsRepairRefs {
    final manager = $$GearNeedsRepairTableTableManager(
      $_db,
      $_db.gearNeedsRepair,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(
      _gearNeedsRepairRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GearNotesTable, List<GearNote>>
  _gearNotesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.gearNotes,
    aliasName: $_aliasNameGenerator(db.masterGear.itemId, db.gearNotes.itemId),
  );

  $$GearNotesTableProcessedTableManager get gearNotesRefs {
    final manager = $$GearNotesTableTableManager(
      $_db,
      $_db.gearNotes,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(_gearNotesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ClimbingGearTable, List<ClimbingGearData>>
  _climbingGearRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.climbingGear,
    aliasName: $_aliasNameGenerator(
      db.masterGear.itemId,
      db.climbingGear.itemId,
    ),
  );

  $$ClimbingGearTableProcessedTableManager get climbingGearRefs {
    final manager = $$ClimbingGearTableTableManager(
      $_db,
      $_db.climbingGear,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(_climbingGearRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> gearNeedsRepairRefs(
    Expression<bool> Function($$GearNeedsRepairTableFilterComposer f) f,
  ) {
    final $$GearNeedsRepairTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.gearNeedsRepair,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GearNeedsRepairTableFilterComposer(
            $db: $db,
            $table: $db.gearNeedsRepair,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> gearNotesRefs(
    Expression<bool> Function($$GearNotesTableFilterComposer f) f,
  ) {
    final $$GearNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.gearNotes,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GearNotesTableFilterComposer(
            $db: $db,
            $table: $db.gearNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> climbingGearRefs(
    Expression<bool> Function($$ClimbingGearTableFilterComposer f) f,
  ) {
    final $$ClimbingGearTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.climbingGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClimbingGearTableFilterComposer(
            $db: $db,
            $table: $db.climbingGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get price => $composableBuilder(
    column: $table.price,
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

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  Expression<T> gearNeedsRepairRefs<T extends Object>(
    Expression<T> Function($$GearNeedsRepairTableAnnotationComposer a) f,
  ) {
    final $$GearNeedsRepairTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.gearNeedsRepair,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GearNeedsRepairTableAnnotationComposer(
            $db: $db,
            $table: $db.gearNeedsRepair,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> gearNotesRefs<T extends Object>(
    Expression<T> Function($$GearNotesTableAnnotationComposer a) f,
  ) {
    final $$GearNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.gearNotes,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GearNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.gearNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> climbingGearRefs<T extends Object>(
    Expression<T> Function($$ClimbingGearTableAnnotationComposer a) f,
  ) {
    final $$ClimbingGearTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.climbingGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClimbingGearTableAnnotationComposer(
            $db: $db,
            $table: $db.climbingGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
          (MasterGearData, $$MasterGearTableReferences),
          MasterGearData,
          PrefetchHooks Function({
            bool gearNeedsRepairRefs,
            bool gearNotesRefs,
            bool climbingGearRefs,
          })
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
                Value<int> quantity = const Value.absent(),
                Value<int> weight = const Value.absent(),
                Value<int> price = const Value.absent(),
              }) => MasterGearCompanion(
                itemId: itemId,
                name: name,
                type: type,
                quantity: quantity,
                weight: weight,
                price: price,
              ),
          createCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                required String name,
                required String type,
                Value<int> quantity = const Value.absent(),
                Value<int> weight = const Value.absent(),
                Value<int> price = const Value.absent(),
              }) => MasterGearCompanion.insert(
                itemId: itemId,
                name: name,
                type: type,
                quantity: quantity,
                weight: weight,
                price: price,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$MasterGearTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({
            gearNeedsRepairRefs = false,
            gearNotesRefs = false,
            climbingGearRefs = false,
          }) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gearNeedsRepairRefs) db.gearNeedsRepair,
                if (gearNotesRefs) db.gearNotes,
                if (climbingGearRefs) db.climbingGear,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gearNeedsRepairRefs)
                    await $_getPrefetchedData<
                      MasterGearData,
                      $MasterGearTable,
                      GearNeedsRepairData
                    >(
                      currentTable: table,
                      referencedTable: $$MasterGearTableReferences
                          ._gearNeedsRepairRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$MasterGearTableReferences(
                                db,
                                table,
                                p0,
                              ).gearNeedsRepairRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.itemId == item.itemId,
                          ),
                      typedResults: items,
                    ),
                  if (gearNotesRefs)
                    await $_getPrefetchedData<
                      MasterGearData,
                      $MasterGearTable,
                      GearNote
                    >(
                      currentTable: table,
                      referencedTable: $$MasterGearTableReferences
                          ._gearNotesRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$MasterGearTableReferences(
                                db,
                                table,
                                p0,
                              ).gearNotesRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.itemId == item.itemId,
                          ),
                      typedResults: items,
                    ),
                  if (climbingGearRefs)
                    await $_getPrefetchedData<
                      MasterGearData,
                      $MasterGearTable,
                      ClimbingGearData
                    >(
                      currentTable: table,
                      referencedTable: $$MasterGearTableReferences
                          ._climbingGearRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$MasterGearTableReferences(
                                db,
                                table,
                                p0,
                              ).climbingGearRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.itemId == item.itemId,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
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
      (MasterGearData, $$MasterGearTableReferences),
      MasterGearData,
      PrefetchHooks Function({
        bool gearNeedsRepairRefs,
        bool gearNotesRefs,
        bool climbingGearRefs,
      })
    >;
typedef $$GearNeedsRepairTableCreateCompanionBuilder =
    GearNeedsRepairCompanion Function({
      Value<int> repairId,
      required int itemId,
      required String type,
      Value<int> usable,
      Value<String?> note,
    });
typedef $$GearNeedsRepairTableUpdateCompanionBuilder =
    GearNeedsRepairCompanion Function({
      Value<int> repairId,
      Value<int> itemId,
      Value<String> type,
      Value<int> usable,
      Value<String?> note,
    });

final class $$GearNeedsRepairTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $GearNeedsRepairTable,
          GearNeedsRepairData
        > {
  $$GearNeedsRepairTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $MasterGearTable _itemIdTable(_$AppDatabase db) =>
      db.masterGear.createAlias(
        $_aliasNameGenerator(db.gearNeedsRepair.itemId, db.masterGear.itemId),
      );

  $$MasterGearTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$MasterGearTableTableManager(
      $_db,
      $_db.masterGear,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GearNeedsRepairTableFilterComposer
    extends Composer<_$AppDatabase, $GearNeedsRepairTable> {
  $$GearNeedsRepairTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get repairId => $composableBuilder(
    column: $table.repairId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get usable => $composableBuilder(
    column: $table.usable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$MasterGearTableFilterComposer get itemId {
    final $$MasterGearTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableFilterComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNeedsRepairTableOrderingComposer
    extends Composer<_$AppDatabase, $GearNeedsRepairTable> {
  $$GearNeedsRepairTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get repairId => $composableBuilder(
    column: $table.repairId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get usable => $composableBuilder(
    column: $table.usable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$MasterGearTableOrderingComposer get itemId {
    final $$MasterGearTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableOrderingComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNeedsRepairTableAnnotationComposer
    extends Composer<_$AppDatabase, $GearNeedsRepairTable> {
  $$GearNeedsRepairTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get repairId =>
      $composableBuilder(column: $table.repairId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get usable =>
      $composableBuilder(column: $table.usable, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$MasterGearTableAnnotationComposer get itemId {
    final $$MasterGearTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableAnnotationComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNeedsRepairTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GearNeedsRepairTable,
          GearNeedsRepairData,
          $$GearNeedsRepairTableFilterComposer,
          $$GearNeedsRepairTableOrderingComposer,
          $$GearNeedsRepairTableAnnotationComposer,
          $$GearNeedsRepairTableCreateCompanionBuilder,
          $$GearNeedsRepairTableUpdateCompanionBuilder,
          (GearNeedsRepairData, $$GearNeedsRepairTableReferences),
          GearNeedsRepairData,
          PrefetchHooks Function({bool itemId})
        > {
  $$GearNeedsRepairTableTableManager(
    _$AppDatabase db,
    $GearNeedsRepairTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$GearNeedsRepairTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$GearNeedsRepairTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$GearNeedsRepairTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> repairId = const Value.absent(),
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> usable = const Value.absent(),
                Value<String?> note = const Value.absent(),
              }) => GearNeedsRepairCompanion(
                repairId: repairId,
                itemId: itemId,
                type: type,
                usable: usable,
                note: note,
              ),
          createCompanionCallback:
              ({
                Value<int> repairId = const Value.absent(),
                required int itemId,
                required String type,
                Value<int> usable = const Value.absent(),
                Value<String?> note = const Value.absent(),
              }) => GearNeedsRepairCompanion.insert(
                repairId: repairId,
                itemId: itemId,
                type: type,
                usable: usable,
                note: note,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$GearNeedsRepairTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (itemId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.itemId,
                            referencedTable: $$GearNeedsRepairTableReferences
                                ._itemIdTable(db),
                            referencedColumn:
                                $$GearNeedsRepairTableReferences
                                    ._itemIdTable(db)
                                    .itemId,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GearNeedsRepairTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GearNeedsRepairTable,
      GearNeedsRepairData,
      $$GearNeedsRepairTableFilterComposer,
      $$GearNeedsRepairTableOrderingComposer,
      $$GearNeedsRepairTableAnnotationComposer,
      $$GearNeedsRepairTableCreateCompanionBuilder,
      $$GearNeedsRepairTableUpdateCompanionBuilder,
      (GearNeedsRepairData, $$GearNeedsRepairTableReferences),
      GearNeedsRepairData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$GearNotesTableCreateCompanionBuilder =
    GearNotesCompanion Function({
      required int itemId,
      Value<String?> note,
      Value<int> rowid,
    });
typedef $$GearNotesTableUpdateCompanionBuilder =
    GearNotesCompanion Function({
      Value<int> itemId,
      Value<String?> note,
      Value<int> rowid,
    });

final class $$GearNotesTableReferences
    extends BaseReferences<_$AppDatabase, $GearNotesTable, GearNote> {
  $$GearNotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MasterGearTable _itemIdTable(_$AppDatabase db) =>
      db.masterGear.createAlias(
        $_aliasNameGenerator(db.gearNotes.itemId, db.masterGear.itemId),
      );

  $$MasterGearTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$MasterGearTableTableManager(
      $_db,
      $_db.masterGear,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GearNotesTableFilterComposer
    extends Composer<_$AppDatabase, $GearNotesTable> {
  $$GearNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$MasterGearTableFilterComposer get itemId {
    final $$MasterGearTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableFilterComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNotesTableOrderingComposer
    extends Composer<_$AppDatabase, $GearNotesTable> {
  $$GearNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$MasterGearTableOrderingComposer get itemId {
    final $$MasterGearTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableOrderingComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GearNotesTable> {
  $$GearNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$MasterGearTableAnnotationComposer get itemId {
    final $$MasterGearTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableAnnotationComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GearNotesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GearNotesTable,
          GearNote,
          $$GearNotesTableFilterComposer,
          $$GearNotesTableOrderingComposer,
          $$GearNotesTableAnnotationComposer,
          $$GearNotesTableCreateCompanionBuilder,
          $$GearNotesTableUpdateCompanionBuilder,
          (GearNote, $$GearNotesTableReferences),
          GearNote,
          PrefetchHooks Function({bool itemId})
        > {
  $$GearNotesTableTableManager(_$AppDatabase db, $GearNotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$GearNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$GearNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$GearNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) =>
                  GearNotesCompanion(itemId: itemId, note: note, rowid: rowid),
          createCompanionCallback:
              ({
                required int itemId,
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GearNotesCompanion.insert(
                itemId: itemId,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$GearNotesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (itemId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.itemId,
                            referencedTable: $$GearNotesTableReferences
                                ._itemIdTable(db),
                            referencedColumn:
                                $$GearNotesTableReferences
                                    ._itemIdTable(db)
                                    .itemId,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GearNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GearNotesTable,
      GearNote,
      $$GearNotesTableFilterComposer,
      $$GearNotesTableOrderingComposer,
      $$GearNotesTableAnnotationComposer,
      $$GearNotesTableCreateCompanionBuilder,
      $$GearNotesTableUpdateCompanionBuilder,
      (GearNote, $$GearNotesTableReferences),
      GearNote,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$ClimbingGearTableCreateCompanionBuilder =
    ClimbingGearCompanion Function({Value<int> itemId, required String type});
typedef $$ClimbingGearTableUpdateCompanionBuilder =
    ClimbingGearCompanion Function({Value<int> itemId, Value<String> type});

final class $$ClimbingGearTableReferences
    extends
        BaseReferences<_$AppDatabase, $ClimbingGearTable, ClimbingGearData> {
  $$ClimbingGearTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MasterGearTable _itemIdTable(_$AppDatabase db) =>
      db.masterGear.createAlias(
        $_aliasNameGenerator(db.climbingGear.itemId, db.masterGear.itemId),
      );

  $$MasterGearTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$MasterGearTableTableManager(
      $_db,
      $_db.masterGear,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ClimbingGearTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearTable> {
  $$ClimbingGearTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  $$MasterGearTableFilterComposer get itemId {
    final $$MasterGearTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableFilterComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ClimbingGearTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearTable> {
  $$ClimbingGearTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  $$MasterGearTableOrderingComposer get itemId {
    final $$MasterGearTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableOrderingComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ClimbingGearTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearTable> {
  $$ClimbingGearTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  $$MasterGearTableAnnotationComposer get itemId {
    final $$MasterGearTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.masterGear,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterGearTableAnnotationComposer(
            $db: $db,
            $table: $db.masterGear,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ClimbingGearTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearTable,
          ClimbingGearData,
          $$ClimbingGearTableFilterComposer,
          $$ClimbingGearTableOrderingComposer,
          $$ClimbingGearTableAnnotationComposer,
          $$ClimbingGearTableCreateCompanionBuilder,
          $$ClimbingGearTableUpdateCompanionBuilder,
          (ClimbingGearData, $$ClimbingGearTableReferences),
          ClimbingGearData,
          PrefetchHooks Function({bool itemId})
        > {
  $$ClimbingGearTableTableManager(_$AppDatabase db, $ClimbingGearTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ClimbingGearTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$ClimbingGearTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
              }) => ClimbingGearCompanion(itemId: itemId, type: type),
          createCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                required String type,
              }) => ClimbingGearCompanion.insert(itemId: itemId, type: type),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$ClimbingGearTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (itemId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.itemId,
                            referencedTable: $$ClimbingGearTableReferences
                                ._itemIdTable(db),
                            referencedColumn:
                                $$ClimbingGearTableReferences
                                    ._itemIdTable(db)
                                    .itemId,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ClimbingGearTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearTable,
      ClimbingGearData,
      $$ClimbingGearTableFilterComposer,
      $$ClimbingGearTableOrderingComposer,
      $$ClimbingGearTableAnnotationComposer,
      $$ClimbingGearTableCreateCompanionBuilder,
      $$ClimbingGearTableUpdateCompanionBuilder,
      (ClimbingGearData, $$ClimbingGearTableReferences),
      ClimbingGearData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$ClimbingGearHardwareTableCreateCompanionBuilder =
    ClimbingGearHardwareCompanion Function({
      required int itemId,
      required String type,
      required String material,
      Value<int> locking,
      Value<int> size,
      Value<int> rowid,
    });
typedef $$ClimbingGearHardwareTableUpdateCompanionBuilder =
    ClimbingGearHardwareCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<String> material,
      Value<int> locking,
      Value<int> size,
      Value<int> rowid,
    });

class $$ClimbingGearHardwareTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearHardwareTable> {
  $$ClimbingGearHardwareTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get locking => $composableBuilder(
    column: $table.locking,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearHardwareTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearHardwareTable> {
  $$ClimbingGearHardwareTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get locking => $composableBuilder(
    column: $table.locking,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearHardwareTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearHardwareTable> {
  $$ClimbingGearHardwareTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get material =>
      $composableBuilder(column: $table.material, builder: (column) => column);

  GeneratedColumn<int> get locking =>
      $composableBuilder(column: $table.locking, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);
}

class $$ClimbingGearHardwareTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearHardwareTable,
          ClimbingGearHardwareData,
          $$ClimbingGearHardwareTableFilterComposer,
          $$ClimbingGearHardwareTableOrderingComposer,
          $$ClimbingGearHardwareTableAnnotationComposer,
          $$ClimbingGearHardwareTableCreateCompanionBuilder,
          $$ClimbingGearHardwareTableUpdateCompanionBuilder,
          (
            ClimbingGearHardwareData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearHardwareTable,
              ClimbingGearHardwareData
            >,
          ),
          ClimbingGearHardwareData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearHardwareTableTableManager(
    _$AppDatabase db,
    $ClimbingGearHardwareTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearHardwareTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearHardwareTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearHardwareTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> material = const Value.absent(),
                Value<int> locking = const Value.absent(),
                Value<int> size = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearHardwareCompanion(
                itemId: itemId,
                type: type,
                material: material,
                locking: locking,
                size: size,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                required String material,
                Value<int> locking = const Value.absent(),
                Value<int> size = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearHardwareCompanion.insert(
                itemId: itemId,
                type: type,
                material: material,
                locking: locking,
                size: size,
                rowid: rowid,
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

typedef $$ClimbingGearHardwareTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearHardwareTable,
      ClimbingGearHardwareData,
      $$ClimbingGearHardwareTableFilterComposer,
      $$ClimbingGearHardwareTableOrderingComposer,
      $$ClimbingGearHardwareTableAnnotationComposer,
      $$ClimbingGearHardwareTableCreateCompanionBuilder,
      $$ClimbingGearHardwareTableUpdateCompanionBuilder,
      (
        ClimbingGearHardwareData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearHardwareTable,
          ClimbingGearHardwareData
        >,
      ),
      ClimbingGearHardwareData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearIceaxeTableCreateCompanionBuilder =
    ClimbingGearIceaxeCompanion Function({
      required int itemId,
      required String type,
      Value<int> lengthCm,
      Value<int> slope,
      Value<int> mixed,
      Value<int> rowid,
    });
typedef $$ClimbingGearIceaxeTableUpdateCompanionBuilder =
    ClimbingGearIceaxeCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<int> lengthCm,
      Value<int> slope,
      Value<int> mixed,
      Value<int> rowid,
    });

class $$ClimbingGearIceaxeTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearIceaxeTable> {
  $$ClimbingGearIceaxeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lengthCm => $composableBuilder(
    column: $table.lengthCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get slope => $composableBuilder(
    column: $table.slope,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mixed => $composableBuilder(
    column: $table.mixed,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearIceaxeTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearIceaxeTable> {
  $$ClimbingGearIceaxeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lengthCm => $composableBuilder(
    column: $table.lengthCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get slope => $composableBuilder(
    column: $table.slope,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mixed => $composableBuilder(
    column: $table.mixed,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearIceaxeTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearIceaxeTable> {
  $$ClimbingGearIceaxeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get lengthCm =>
      $composableBuilder(column: $table.lengthCm, builder: (column) => column);

  GeneratedColumn<int> get slope =>
      $composableBuilder(column: $table.slope, builder: (column) => column);

  GeneratedColumn<int> get mixed =>
      $composableBuilder(column: $table.mixed, builder: (column) => column);
}

class $$ClimbingGearIceaxeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearIceaxeTable,
          ClimbingGearIceaxeData,
          $$ClimbingGearIceaxeTableFilterComposer,
          $$ClimbingGearIceaxeTableOrderingComposer,
          $$ClimbingGearIceaxeTableAnnotationComposer,
          $$ClimbingGearIceaxeTableCreateCompanionBuilder,
          $$ClimbingGearIceaxeTableUpdateCompanionBuilder,
          (
            ClimbingGearIceaxeData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearIceaxeTable,
              ClimbingGearIceaxeData
            >,
          ),
          ClimbingGearIceaxeData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearIceaxeTableTableManager(
    _$AppDatabase db,
    $ClimbingGearIceaxeTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearIceaxeTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearIceaxeTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearIceaxeTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> lengthCm = const Value.absent(),
                Value<int> slope = const Value.absent(),
                Value<int> mixed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearIceaxeCompanion(
                itemId: itemId,
                type: type,
                lengthCm: lengthCm,
                slope: slope,
                mixed: mixed,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<int> lengthCm = const Value.absent(),
                Value<int> slope = const Value.absent(),
                Value<int> mixed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearIceaxeCompanion.insert(
                itemId: itemId,
                type: type,
                lengthCm: lengthCm,
                slope: slope,
                mixed: mixed,
                rowid: rowid,
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

typedef $$ClimbingGearIceaxeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearIceaxeTable,
      ClimbingGearIceaxeData,
      $$ClimbingGearIceaxeTableFilterComposer,
      $$ClimbingGearIceaxeTableOrderingComposer,
      $$ClimbingGearIceaxeTableAnnotationComposer,
      $$ClimbingGearIceaxeTableCreateCompanionBuilder,
      $$ClimbingGearIceaxeTableUpdateCompanionBuilder,
      (
        ClimbingGearIceaxeData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearIceaxeTable,
          ClimbingGearIceaxeData
        >,
      ),
      ClimbingGearIceaxeData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearPersonalTableCreateCompanionBuilder =
    ClimbingGearPersonalCompanion Function({
      required int itemId,
      required String type,
      Value<int> rowid,
    });
typedef $$ClimbingGearPersonalTableUpdateCompanionBuilder =
    ClimbingGearPersonalCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<int> rowid,
    });

class $$ClimbingGearPersonalTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalTable> {
  $$ClimbingGearPersonalTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearPersonalTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalTable> {
  $$ClimbingGearPersonalTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearPersonalTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalTable> {
  $$ClimbingGearPersonalTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);
}

class $$ClimbingGearPersonalTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearPersonalTable,
          ClimbingGearPersonalData,
          $$ClimbingGearPersonalTableFilterComposer,
          $$ClimbingGearPersonalTableOrderingComposer,
          $$ClimbingGearPersonalTableAnnotationComposer,
          $$ClimbingGearPersonalTableCreateCompanionBuilder,
          $$ClimbingGearPersonalTableUpdateCompanionBuilder,
          (
            ClimbingGearPersonalData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearPersonalTable,
              ClimbingGearPersonalData
            >,
          ),
          ClimbingGearPersonalData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearPersonalTableTableManager(
    _$AppDatabase db,
    $ClimbingGearPersonalTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearPersonalTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearPersonalTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearPersonalTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearPersonalCompanion(
                itemId: itemId,
                type: type,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearPersonalCompanion.insert(
                itemId: itemId,
                type: type,
                rowid: rowid,
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

typedef $$ClimbingGearPersonalTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearPersonalTable,
      ClimbingGearPersonalData,
      $$ClimbingGearPersonalTableFilterComposer,
      $$ClimbingGearPersonalTableOrderingComposer,
      $$ClimbingGearPersonalTableAnnotationComposer,
      $$ClimbingGearPersonalTableCreateCompanionBuilder,
      $$ClimbingGearPersonalTableUpdateCompanionBuilder,
      (
        ClimbingGearPersonalData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearPersonalTable,
          ClimbingGearPersonalData
        >,
      ),
      ClimbingGearPersonalData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearPersonalShoesTableCreateCompanionBuilder =
    ClimbingGearPersonalShoesCompanion Function({
      Value<int> shoeId,
      required int itemId,
      required String type,
      Value<int> condition,
      Value<int> resoles,
      Value<String?> rubberType,
      Value<int> tradScore,
      Value<int> sportScore,
      Value<int> crackScore,
      Value<int> hikingScore,
      Value<int> agressiveScore,
    });
typedef $$ClimbingGearPersonalShoesTableUpdateCompanionBuilder =
    ClimbingGearPersonalShoesCompanion Function({
      Value<int> shoeId,
      Value<int> itemId,
      Value<String> type,
      Value<int> condition,
      Value<int> resoles,
      Value<String?> rubberType,
      Value<int> tradScore,
      Value<int> sportScore,
      Value<int> crackScore,
      Value<int> hikingScore,
      Value<int> agressiveScore,
    });

class $$ClimbingGearPersonalShoesTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalShoesTable> {
  $$ClimbingGearPersonalShoesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get shoeId => $composableBuilder(
    column: $table.shoeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get resoles => $composableBuilder(
    column: $table.resoles,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rubberType => $composableBuilder(
    column: $table.rubberType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tradScore => $composableBuilder(
    column: $table.tradScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sportScore => $composableBuilder(
    column: $table.sportScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get crackScore => $composableBuilder(
    column: $table.crackScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hikingScore => $composableBuilder(
    column: $table.hikingScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get agressiveScore => $composableBuilder(
    column: $table.agressiveScore,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearPersonalShoesTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalShoesTable> {
  $$ClimbingGearPersonalShoesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get shoeId => $composableBuilder(
    column: $table.shoeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get resoles => $composableBuilder(
    column: $table.resoles,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rubberType => $composableBuilder(
    column: $table.rubberType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tradScore => $composableBuilder(
    column: $table.tradScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sportScore => $composableBuilder(
    column: $table.sportScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get crackScore => $composableBuilder(
    column: $table.crackScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hikingScore => $composableBuilder(
    column: $table.hikingScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get agressiveScore => $composableBuilder(
    column: $table.agressiveScore,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearPersonalShoesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearPersonalShoesTable> {
  $$ClimbingGearPersonalShoesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get shoeId =>
      $composableBuilder(column: $table.shoeId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get condition =>
      $composableBuilder(column: $table.condition, builder: (column) => column);

  GeneratedColumn<int> get resoles =>
      $composableBuilder(column: $table.resoles, builder: (column) => column);

  GeneratedColumn<String> get rubberType => $composableBuilder(
    column: $table.rubberType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tradScore =>
      $composableBuilder(column: $table.tradScore, builder: (column) => column);

  GeneratedColumn<int> get sportScore => $composableBuilder(
    column: $table.sportScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get crackScore => $composableBuilder(
    column: $table.crackScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get hikingScore => $composableBuilder(
    column: $table.hikingScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get agressiveScore => $composableBuilder(
    column: $table.agressiveScore,
    builder: (column) => column,
  );
}

class $$ClimbingGearPersonalShoesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearPersonalShoesTable,
          ClimbingGearPersonalShoe,
          $$ClimbingGearPersonalShoesTableFilterComposer,
          $$ClimbingGearPersonalShoesTableOrderingComposer,
          $$ClimbingGearPersonalShoesTableAnnotationComposer,
          $$ClimbingGearPersonalShoesTableCreateCompanionBuilder,
          $$ClimbingGearPersonalShoesTableUpdateCompanionBuilder,
          (
            ClimbingGearPersonalShoe,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearPersonalShoesTable,
              ClimbingGearPersonalShoe
            >,
          ),
          ClimbingGearPersonalShoe,
          PrefetchHooks Function()
        > {
  $$ClimbingGearPersonalShoesTableTableManager(
    _$AppDatabase db,
    $ClimbingGearPersonalShoesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearPersonalShoesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearPersonalShoesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearPersonalShoesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> shoeId = const Value.absent(),
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> condition = const Value.absent(),
                Value<int> resoles = const Value.absent(),
                Value<String?> rubberType = const Value.absent(),
                Value<int> tradScore = const Value.absent(),
                Value<int> sportScore = const Value.absent(),
                Value<int> crackScore = const Value.absent(),
                Value<int> hikingScore = const Value.absent(),
                Value<int> agressiveScore = const Value.absent(),
              }) => ClimbingGearPersonalShoesCompanion(
                shoeId: shoeId,
                itemId: itemId,
                type: type,
                condition: condition,
                resoles: resoles,
                rubberType: rubberType,
                tradScore: tradScore,
                sportScore: sportScore,
                crackScore: crackScore,
                hikingScore: hikingScore,
                agressiveScore: agressiveScore,
              ),
          createCompanionCallback:
              ({
                Value<int> shoeId = const Value.absent(),
                required int itemId,
                required String type,
                Value<int> condition = const Value.absent(),
                Value<int> resoles = const Value.absent(),
                Value<String?> rubberType = const Value.absent(),
                Value<int> tradScore = const Value.absent(),
                Value<int> sportScore = const Value.absent(),
                Value<int> crackScore = const Value.absent(),
                Value<int> hikingScore = const Value.absent(),
                Value<int> agressiveScore = const Value.absent(),
              }) => ClimbingGearPersonalShoesCompanion.insert(
                shoeId: shoeId,
                itemId: itemId,
                type: type,
                condition: condition,
                resoles: resoles,
                rubberType: rubberType,
                tradScore: tradScore,
                sportScore: sportScore,
                crackScore: crackScore,
                hikingScore: hikingScore,
                agressiveScore: agressiveScore,
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

typedef $$ClimbingGearPersonalShoesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearPersonalShoesTable,
      ClimbingGearPersonalShoe,
      $$ClimbingGearPersonalShoesTableFilterComposer,
      $$ClimbingGearPersonalShoesTableOrderingComposer,
      $$ClimbingGearPersonalShoesTableAnnotationComposer,
      $$ClimbingGearPersonalShoesTableCreateCompanionBuilder,
      $$ClimbingGearPersonalShoesTableUpdateCompanionBuilder,
      (
        ClimbingGearPersonalShoe,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearPersonalShoesTable,
          ClimbingGearPersonalShoe
        >,
      ),
      ClimbingGearPersonalShoe,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearProtectionTableCreateCompanionBuilder =
    ClimbingGearProtectionCompanion Function({
      required int itemId,
      required String type,
      Value<int> size,
      Value<int> rowid,
    });
typedef $$ClimbingGearProtectionTableUpdateCompanionBuilder =
    ClimbingGearProtectionCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<int> size,
      Value<int> rowid,
    });

class $$ClimbingGearProtectionTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearProtectionTable> {
  $$ClimbingGearProtectionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearProtectionTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearProtectionTable> {
  $$ClimbingGearProtectionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearProtectionTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearProtectionTable> {
  $$ClimbingGearProtectionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);
}

class $$ClimbingGearProtectionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearProtectionTable,
          ClimbingGearProtectionData,
          $$ClimbingGearProtectionTableFilterComposer,
          $$ClimbingGearProtectionTableOrderingComposer,
          $$ClimbingGearProtectionTableAnnotationComposer,
          $$ClimbingGearProtectionTableCreateCompanionBuilder,
          $$ClimbingGearProtectionTableUpdateCompanionBuilder,
          (
            ClimbingGearProtectionData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearProtectionTable,
              ClimbingGearProtectionData
            >,
          ),
          ClimbingGearProtectionData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearProtectionTableTableManager(
    _$AppDatabase db,
    $ClimbingGearProtectionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearProtectionTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearProtectionTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearProtectionTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> size = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearProtectionCompanion(
                itemId: itemId,
                type: type,
                size: size,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<int> size = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearProtectionCompanion.insert(
                itemId: itemId,
                type: type,
                size: size,
                rowid: rowid,
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

typedef $$ClimbingGearProtectionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearProtectionTable,
      ClimbingGearProtectionData,
      $$ClimbingGearProtectionTableFilterComposer,
      $$ClimbingGearProtectionTableOrderingComposer,
      $$ClimbingGearProtectionTableAnnotationComposer,
      $$ClimbingGearProtectionTableCreateCompanionBuilder,
      $$ClimbingGearProtectionTableUpdateCompanionBuilder,
      (
        ClimbingGearProtectionData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearProtectionTable,
          ClimbingGearProtectionData
        >,
      ),
      ClimbingGearProtectionData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearRopeTableCreateCompanionBuilder =
    ClimbingGearRopeCompanion Function({
      required int itemId,
      required String type,
      Value<int> lengthM,
      Value<int> widthTmm,
      Value<int> dryTreated,
      Value<int> isDynamic,
      Value<String> dom,
      Value<int> condition,
      Value<int> rowid,
    });
typedef $$ClimbingGearRopeTableUpdateCompanionBuilder =
    ClimbingGearRopeCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<int> lengthM,
      Value<int> widthTmm,
      Value<int> dryTreated,
      Value<int> isDynamic,
      Value<String> dom,
      Value<int> condition,
      Value<int> rowid,
    });

class $$ClimbingGearRopeTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeTable> {
  $$ClimbingGearRopeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lengthM => $composableBuilder(
    column: $table.lengthM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get widthTmm => $composableBuilder(
    column: $table.widthTmm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dryTreated => $composableBuilder(
    column: $table.dryTreated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isDynamic => $composableBuilder(
    column: $table.isDynamic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dom => $composableBuilder(
    column: $table.dom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearRopeTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeTable> {
  $$ClimbingGearRopeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lengthM => $composableBuilder(
    column: $table.lengthM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get widthTmm => $composableBuilder(
    column: $table.widthTmm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dryTreated => $composableBuilder(
    column: $table.dryTreated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isDynamic => $composableBuilder(
    column: $table.isDynamic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dom => $composableBuilder(
    column: $table.dom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearRopeTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeTable> {
  $$ClimbingGearRopeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get lengthM =>
      $composableBuilder(column: $table.lengthM, builder: (column) => column);

  GeneratedColumn<int> get widthTmm =>
      $composableBuilder(column: $table.widthTmm, builder: (column) => column);

  GeneratedColumn<int> get dryTreated => $composableBuilder(
    column: $table.dryTreated,
    builder: (column) => column,
  );

  GeneratedColumn<int> get isDynamic =>
      $composableBuilder(column: $table.isDynamic, builder: (column) => column);

  GeneratedColumn<String> get dom =>
      $composableBuilder(column: $table.dom, builder: (column) => column);

  GeneratedColumn<int> get condition =>
      $composableBuilder(column: $table.condition, builder: (column) => column);
}

class $$ClimbingGearRopeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearRopeTable,
          ClimbingGearRopeData,
          $$ClimbingGearRopeTableFilterComposer,
          $$ClimbingGearRopeTableOrderingComposer,
          $$ClimbingGearRopeTableAnnotationComposer,
          $$ClimbingGearRopeTableCreateCompanionBuilder,
          $$ClimbingGearRopeTableUpdateCompanionBuilder,
          (
            ClimbingGearRopeData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearRopeTable,
              ClimbingGearRopeData
            >,
          ),
          ClimbingGearRopeData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearRopeTableTableManager(
    _$AppDatabase db,
    $ClimbingGearRopeTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$ClimbingGearRopeTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ClimbingGearRopeTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearRopeTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> lengthM = const Value.absent(),
                Value<int> widthTmm = const Value.absent(),
                Value<int> dryTreated = const Value.absent(),
                Value<int> isDynamic = const Value.absent(),
                Value<String> dom = const Value.absent(),
                Value<int> condition = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRopeCompanion(
                itemId: itemId,
                type: type,
                lengthM: lengthM,
                widthTmm: widthTmm,
                dryTreated: dryTreated,
                isDynamic: isDynamic,
                dom: dom,
                condition: condition,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<int> lengthM = const Value.absent(),
                Value<int> widthTmm = const Value.absent(),
                Value<int> dryTreated = const Value.absent(),
                Value<int> isDynamic = const Value.absent(),
                Value<String> dom = const Value.absent(),
                Value<int> condition = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRopeCompanion.insert(
                itemId: itemId,
                type: type,
                lengthM: lengthM,
                widthTmm: widthTmm,
                dryTreated: dryTreated,
                isDynamic: isDynamic,
                dom: dom,
                condition: condition,
                rowid: rowid,
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

typedef $$ClimbingGearRopeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearRopeTable,
      ClimbingGearRopeData,
      $$ClimbingGearRopeTableFilterComposer,
      $$ClimbingGearRopeTableOrderingComposer,
      $$ClimbingGearRopeTableAnnotationComposer,
      $$ClimbingGearRopeTableCreateCompanionBuilder,
      $$ClimbingGearRopeTableUpdateCompanionBuilder,
      (
        ClimbingGearRopeData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearRopeTable,
          ClimbingGearRopeData
        >,
      ),
      ClimbingGearRopeData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearRopeworkTableCreateCompanionBuilder =
    ClimbingGearRopeworkCompanion Function({
      required int itemId,
      required String type,
      Value<double> widthMinTmm,
      Value<double> widthMaxTmm,
      Value<int> autoLocking,
      Value<int> mechanicalDevice,
      Value<int> doubleRope,
      Value<int> rowid,
    });
typedef $$ClimbingGearRopeworkTableUpdateCompanionBuilder =
    ClimbingGearRopeworkCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<double> widthMinTmm,
      Value<double> widthMaxTmm,
      Value<int> autoLocking,
      Value<int> mechanicalDevice,
      Value<int> doubleRope,
      Value<int> rowid,
    });

class $$ClimbingGearRopeworkTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeworkTable> {
  $$ClimbingGearRopeworkTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get widthMinTmm => $composableBuilder(
    column: $table.widthMinTmm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get widthMaxTmm => $composableBuilder(
    column: $table.widthMaxTmm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get autoLocking => $composableBuilder(
    column: $table.autoLocking,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mechanicalDevice => $composableBuilder(
    column: $table.mechanicalDevice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get doubleRope => $composableBuilder(
    column: $table.doubleRope,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearRopeworkTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeworkTable> {
  $$ClimbingGearRopeworkTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get widthMinTmm => $composableBuilder(
    column: $table.widthMinTmm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get widthMaxTmm => $composableBuilder(
    column: $table.widthMaxTmm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get autoLocking => $composableBuilder(
    column: $table.autoLocking,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mechanicalDevice => $composableBuilder(
    column: $table.mechanicalDevice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get doubleRope => $composableBuilder(
    column: $table.doubleRope,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearRopeworkTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearRopeworkTable> {
  $$ClimbingGearRopeworkTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get widthMinTmm => $composableBuilder(
    column: $table.widthMinTmm,
    builder: (column) => column,
  );

  GeneratedColumn<double> get widthMaxTmm => $composableBuilder(
    column: $table.widthMaxTmm,
    builder: (column) => column,
  );

  GeneratedColumn<int> get autoLocking => $composableBuilder(
    column: $table.autoLocking,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mechanicalDevice => $composableBuilder(
    column: $table.mechanicalDevice,
    builder: (column) => column,
  );

  GeneratedColumn<int> get doubleRope => $composableBuilder(
    column: $table.doubleRope,
    builder: (column) => column,
  );
}

class $$ClimbingGearRopeworkTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearRopeworkTable,
          ClimbingGearRopeworkData,
          $$ClimbingGearRopeworkTableFilterComposer,
          $$ClimbingGearRopeworkTableOrderingComposer,
          $$ClimbingGearRopeworkTableAnnotationComposer,
          $$ClimbingGearRopeworkTableCreateCompanionBuilder,
          $$ClimbingGearRopeworkTableUpdateCompanionBuilder,
          (
            ClimbingGearRopeworkData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearRopeworkTable,
              ClimbingGearRopeworkData
            >,
          ),
          ClimbingGearRopeworkData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearRopeworkTableTableManager(
    _$AppDatabase db,
    $ClimbingGearRopeworkTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearRopeworkTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearRopeworkTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearRopeworkTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> widthMinTmm = const Value.absent(),
                Value<double> widthMaxTmm = const Value.absent(),
                Value<int> autoLocking = const Value.absent(),
                Value<int> mechanicalDevice = const Value.absent(),
                Value<int> doubleRope = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRopeworkCompanion(
                itemId: itemId,
                type: type,
                widthMinTmm: widthMinTmm,
                widthMaxTmm: widthMaxTmm,
                autoLocking: autoLocking,
                mechanicalDevice: mechanicalDevice,
                doubleRope: doubleRope,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<double> widthMinTmm = const Value.absent(),
                Value<double> widthMaxTmm = const Value.absent(),
                Value<int> autoLocking = const Value.absent(),
                Value<int> mechanicalDevice = const Value.absent(),
                Value<int> doubleRope = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRopeworkCompanion.insert(
                itemId: itemId,
                type: type,
                widthMinTmm: widthMinTmm,
                widthMaxTmm: widthMaxTmm,
                autoLocking: autoLocking,
                mechanicalDevice: mechanicalDevice,
                doubleRope: doubleRope,
                rowid: rowid,
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

typedef $$ClimbingGearRopeworkTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearRopeworkTable,
      ClimbingGearRopeworkData,
      $$ClimbingGearRopeworkTableFilterComposer,
      $$ClimbingGearRopeworkTableOrderingComposer,
      $$ClimbingGearRopeworkTableAnnotationComposer,
      $$ClimbingGearRopeworkTableCreateCompanionBuilder,
      $$ClimbingGearRopeworkTableUpdateCompanionBuilder,
      (
        ClimbingGearRopeworkData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearRopeworkTable,
          ClimbingGearRopeworkData
        >,
      ),
      ClimbingGearRopeworkData,
      PrefetchHooks Function()
    >;
typedef $$ClimbingGearRunnerTableCreateCompanionBuilder =
    ClimbingGearRunnerCompanion Function({
      required int itemId,
      required String type,
      Value<int> lengthCm,
      Value<int> rowid,
    });
typedef $$ClimbingGearRunnerTableUpdateCompanionBuilder =
    ClimbingGearRunnerCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<int> lengthCm,
      Value<int> rowid,
    });

class $$ClimbingGearRunnerTableFilterComposer
    extends Composer<_$AppDatabase, $ClimbingGearRunnerTable> {
  $$ClimbingGearRunnerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lengthCm => $composableBuilder(
    column: $table.lengthCm,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClimbingGearRunnerTableOrderingComposer
    extends Composer<_$AppDatabase, $ClimbingGearRunnerTable> {
  $$ClimbingGearRunnerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lengthCm => $composableBuilder(
    column: $table.lengthCm,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClimbingGearRunnerTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClimbingGearRunnerTable> {
  $$ClimbingGearRunnerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get lengthCm =>
      $composableBuilder(column: $table.lengthCm, builder: (column) => column);
}

class $$ClimbingGearRunnerTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClimbingGearRunnerTable,
          ClimbingGearRunnerData,
          $$ClimbingGearRunnerTableFilterComposer,
          $$ClimbingGearRunnerTableOrderingComposer,
          $$ClimbingGearRunnerTableAnnotationComposer,
          $$ClimbingGearRunnerTableCreateCompanionBuilder,
          $$ClimbingGearRunnerTableUpdateCompanionBuilder,
          (
            ClimbingGearRunnerData,
            BaseReferences<
              _$AppDatabase,
              $ClimbingGearRunnerTable,
              ClimbingGearRunnerData
            >,
          ),
          ClimbingGearRunnerData,
          PrefetchHooks Function()
        > {
  $$ClimbingGearRunnerTableTableManager(
    _$AppDatabase db,
    $ClimbingGearRunnerTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ClimbingGearRunnerTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ClimbingGearRunnerTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ClimbingGearRunnerTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> lengthCm = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRunnerCompanion(
                itemId: itemId,
                type: type,
                lengthCm: lengthCm,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<int> lengthCm = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClimbingGearRunnerCompanion.insert(
                itemId: itemId,
                type: type,
                lengthCm: lengthCm,
                rowid: rowid,
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

typedef $$ClimbingGearRunnerTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClimbingGearRunnerTable,
      ClimbingGearRunnerData,
      $$ClimbingGearRunnerTableFilterComposer,
      $$ClimbingGearRunnerTableOrderingComposer,
      $$ClimbingGearRunnerTableAnnotationComposer,
      $$ClimbingGearRunnerTableCreateCompanionBuilder,
      $$ClimbingGearRunnerTableUpdateCompanionBuilder,
      (
        ClimbingGearRunnerData,
        BaseReferences<
          _$AppDatabase,
          $ClimbingGearRunnerTable,
          ClimbingGearRunnerData
        >,
      ),
      ClimbingGearRunnerData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MasterGearTableTableManager get masterGear =>
      $$MasterGearTableTableManager(_db, _db.masterGear);
  $$GearNeedsRepairTableTableManager get gearNeedsRepair =>
      $$GearNeedsRepairTableTableManager(_db, _db.gearNeedsRepair);
  $$GearNotesTableTableManager get gearNotes =>
      $$GearNotesTableTableManager(_db, _db.gearNotes);
  $$ClimbingGearTableTableManager get climbingGear =>
      $$ClimbingGearTableTableManager(_db, _db.climbingGear);
  $$ClimbingGearHardwareTableTableManager get climbingGearHardware =>
      $$ClimbingGearHardwareTableTableManager(_db, _db.climbingGearHardware);
  $$ClimbingGearIceaxeTableTableManager get climbingGearIceaxe =>
      $$ClimbingGearIceaxeTableTableManager(_db, _db.climbingGearIceaxe);
  $$ClimbingGearPersonalTableTableManager get climbingGearPersonal =>
      $$ClimbingGearPersonalTableTableManager(_db, _db.climbingGearPersonal);
  $$ClimbingGearPersonalShoesTableTableManager get climbingGearPersonalShoes =>
      $$ClimbingGearPersonalShoesTableTableManager(
        _db,
        _db.climbingGearPersonalShoes,
      );
  $$ClimbingGearProtectionTableTableManager get climbingGearProtection =>
      $$ClimbingGearProtectionTableTableManager(
        _db,
        _db.climbingGearProtection,
      );
  $$ClimbingGearRopeTableTableManager get climbingGearRope =>
      $$ClimbingGearRopeTableTableManager(_db, _db.climbingGearRope);
  $$ClimbingGearRopeworkTableTableManager get climbingGearRopework =>
      $$ClimbingGearRopeworkTableTableManager(_db, _db.climbingGearRopework);
  $$ClimbingGearRunnerTableTableManager get climbingGearRunner =>
      $$ClimbingGearRunnerTableTableManager(_db, _db.climbingGearRunner);
}
