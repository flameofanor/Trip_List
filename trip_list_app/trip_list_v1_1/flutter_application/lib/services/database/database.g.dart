// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MasterTable extends Master with TableInfo<$MasterTable, MasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MasterTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
    'weight',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, name, quantity, weight];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'master';
  @override
  VerificationContext validateIntegrity(
    Insertable<MasterData> instance, {
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
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  MasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MasterData(
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
      quantity:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}quantity'],
          )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight'],
      ),
    );
  }

  @override
  $MasterTable createAlias(String alias) {
    return $MasterTable(attachedDatabase, alias);
  }

  @override
  bool get isStrict => true;
}

class MasterData extends DataClass implements Insertable<MasterData> {
  final int itemId;
  final String name;
  final int quantity;
  final int? weight;
  const MasterData({
    required this.itemId,
    required this.name,
    required this.quantity,
    this.weight,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['name'] = Variable<String>(name);
    map['quantity'] = Variable<int>(quantity);
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    return map;
  }

  MasterCompanion toCompanion(bool nullToAbsent) {
    return MasterCompanion(
      itemId: Value(itemId),
      name: Value(name),
      quantity: Value(quantity),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
    );
  }

  factory MasterData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MasterData(
      itemId: serializer.fromJson<int>(json['itemId']),
      name: serializer.fromJson<String>(json['name']),
      quantity: serializer.fromJson<int>(json['quantity']),
      weight: serializer.fromJson<int?>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'name': serializer.toJson<String>(name),
      'quantity': serializer.toJson<int>(quantity),
      'weight': serializer.toJson<int?>(weight),
    };
  }

  MasterData copyWith({
    int? itemId,
    String? name,
    int? quantity,
    Value<int?> weight = const Value.absent(),
  }) => MasterData(
    itemId: itemId ?? this.itemId,
    name: name ?? this.name,
    quantity: quantity ?? this.quantity,
    weight: weight.present ? weight.value : this.weight,
  );
  MasterData copyWithCompanion(MasterCompanion data) {
    return MasterData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      name: data.name.present ? data.name.value : this.name,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      weight: data.weight.present ? data.weight.value : this.weight,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MasterData(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, name, quantity, weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterData &&
          other.itemId == this.itemId &&
          other.name == this.name &&
          other.quantity == this.quantity &&
          other.weight == this.weight);
}

class MasterCompanion extends UpdateCompanion<MasterData> {
  final Value<int> itemId;
  final Value<String> name;
  final Value<int> quantity;
  final Value<int?> weight;
  const MasterCompanion({
    this.itemId = const Value.absent(),
    this.name = const Value.absent(),
    this.quantity = const Value.absent(),
    this.weight = const Value.absent(),
  });
  MasterCompanion.insert({
    this.itemId = const Value.absent(),
    required String name,
    required int quantity,
    this.weight = const Value.absent(),
  }) : name = Value(name),
       quantity = Value(quantity);
  static Insertable<MasterData> custom({
    Expression<int>? itemId,
    Expression<String>? name,
    Expression<int>? quantity,
    Expression<int>? weight,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (weight != null) 'weight': weight,
    });
  }

  MasterCompanion copyWith({
    Value<int>? itemId,
    Value<String>? name,
    Value<int>? quantity,
    Value<int?>? weight,
  }) {
    return MasterCompanion(
      itemId: itemId ?? this.itemId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      weight: weight ?? this.weight,
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
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterCompanion(')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

class $TypeTable extends Type with TableInfo<$TypeTable, TypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES master (item_id)',
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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<DriftAny> value = GeneratedColumn<DriftAny>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.any,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, name, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeData> instance, {
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
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  TypeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeData(
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
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.any,
            data['${effectivePrefix}value'],
          )!,
    );
  }

  @override
  $TypeTable createAlias(String alias) {
    return $TypeTable(attachedDatabase, alias);
  }

  @override
  bool get isStrict => true;
}

class TypeData extends DataClass implements Insertable<TypeData> {
  final int itemId;
  final String type;
  final String? name;
  final DriftAny value;
  const TypeData({
    required this.itemId,
    required this.type,
    this.name,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['value'] = Variable<DriftAny>(value);
    return map;
  }

  TypeCompanion toCompanion(bool nullToAbsent) {
    return TypeCompanion(
      itemId: Value(itemId),
      type: Value(type),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      value: Value(value),
    );
  }

  factory TypeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      name: serializer.fromJson<String?>(json['name']),
      value: serializer.fromJson<DriftAny>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'name': serializer.toJson<String?>(name),
      'value': serializer.toJson<DriftAny>(value),
    };
  }

  TypeData copyWith({
    int? itemId,
    String? type,
    Value<String?> name = const Value.absent(),
    DriftAny? value,
  }) => TypeData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    name: name.present ? name.value : this.name,
    value: value ?? this.value,
  );
  TypeData copyWithCompanion(TypeCompanion data) {
    return TypeData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      name: data.name.present ? data.name.value : this.name,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, name, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.name == this.name &&
          other.value == this.value);
}

class TypeCompanion extends UpdateCompanion<TypeData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<String?> name;
  final Value<DriftAny> value;
  final Value<int> rowid;
  const TypeCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TypeCompanion.insert({
    required int itemId,
    required String type,
    this.name = const Value.absent(),
    required DriftAny value,
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type),
       value = Value(value);
  static Insertable<TypeData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<String>? name,
    Expression<DriftAny>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TypeCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<String?>? name,
    Value<DriftAny>? value,
    Value<int>? rowid,
  }) {
    return TypeCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      name: name ?? this.name,
      value: value ?? this.value,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (value.present) {
      map['value'] = Variable<DriftAny>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AttributeTable extends Attribute
    with TableInfo<$AttributeTable, AttributeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttributeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES master (item_id)',
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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<DriftAny> value = GeneratedColumn<DriftAny>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.any,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, type, name, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attribute';
  @override
  VerificationContext validateIntegrity(
    Insertable<AttributeData> instance, {
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
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  AttributeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttributeData(
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
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.any,
            data['${effectivePrefix}value'],
          )!,
    );
  }

  @override
  $AttributeTable createAlias(String alias) {
    return $AttributeTable(attachedDatabase, alias);
  }

  @override
  bool get isStrict => true;
}

class AttributeData extends DataClass implements Insertable<AttributeData> {
  final int itemId;
  final String type;
  final String? name;
  final DriftAny value;
  const AttributeData({
    required this.itemId,
    required this.type,
    this.name,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['value'] = Variable<DriftAny>(value);
    return map;
  }

  AttributeCompanion toCompanion(bool nullToAbsent) {
    return AttributeCompanion(
      itemId: Value(itemId),
      type: Value(type),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      value: Value(value),
    );
  }

  factory AttributeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttributeData(
      itemId: serializer.fromJson<int>(json['itemId']),
      type: serializer.fromJson<String>(json['type']),
      name: serializer.fromJson<String?>(json['name']),
      value: serializer.fromJson<DriftAny>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'type': serializer.toJson<String>(type),
      'name': serializer.toJson<String?>(name),
      'value': serializer.toJson<DriftAny>(value),
    };
  }

  AttributeData copyWith({
    int? itemId,
    String? type,
    Value<String?> name = const Value.absent(),
    DriftAny? value,
  }) => AttributeData(
    itemId: itemId ?? this.itemId,
    type: type ?? this.type,
    name: name.present ? name.value : this.name,
    value: value ?? this.value,
  );
  AttributeData copyWithCompanion(AttributeCompanion data) {
    return AttributeData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      type: data.type.present ? data.type.value : this.type,
      name: data.name.present ? data.name.value : this.name,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttributeData(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, type, name, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttributeData &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.name == this.name &&
          other.value == this.value);
}

class AttributeCompanion extends UpdateCompanion<AttributeData> {
  final Value<int> itemId;
  final Value<String> type;
  final Value<String?> name;
  final Value<DriftAny> value;
  final Value<int> rowid;
  const AttributeCompanion({
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AttributeCompanion.insert({
    required int itemId,
    required String type,
    this.name = const Value.absent(),
    required DriftAny value,
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       type = Value(type),
       value = Value(value);
  static Insertable<AttributeData> custom({
    Expression<int>? itemId,
    Expression<String>? type,
    Expression<String>? name,
    Expression<DriftAny>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AttributeCompanion copyWith({
    Value<int>? itemId,
    Value<String>? type,
    Value<String?>? name,
    Value<DriftAny>? value,
    Value<int>? rowid,
  }) {
    return AttributeCompanion(
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      name: name ?? this.name,
      value: value ?? this.value,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (value.present) {
      map['value'] = Variable<DriftAny>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttributeCompanion(')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MasterTable master = $MasterTable(this);
  late final $TypeTable type = $TypeTable(this);
  late final $AttributeTable attribute = $AttributeTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [master, type, attribute];
}

typedef $$MasterTableCreateCompanionBuilder =
    MasterCompanion Function({
      Value<int> itemId,
      required String name,
      required int quantity,
      Value<int?> weight,
    });
typedef $$MasterTableUpdateCompanionBuilder =
    MasterCompanion Function({
      Value<int> itemId,
      Value<String> name,
      Value<int> quantity,
      Value<int?> weight,
    });

final class $$MasterTableReferences
    extends BaseReferences<_$AppDatabase, $MasterTable, MasterData> {
  $$MasterTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TypeTable, List<TypeData>> _typeRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.type,
    aliasName: $_aliasNameGenerator(db.master.itemId, db.type.itemId),
  );

  $$TypeTableProcessedTableManager get typeRefs {
    final manager = $$TypeTableTableManager(
      $_db,
      $_db.type,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(_typeRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$AttributeTable, List<AttributeData>>
  _attributeRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.attribute,
    aliasName: $_aliasNameGenerator(db.master.itemId, db.attribute.itemId),
  );

  $$AttributeTableProcessedTableManager get attributeRefs {
    final manager = $$AttributeTableTableManager(
      $_db,
      $_db.attribute,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(_attributeRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MasterTableFilterComposer
    extends Composer<_$AppDatabase, $MasterTable> {
  $$MasterTableFilterComposer({
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

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> typeRefs(
    Expression<bool> Function($$TypeTableFilterComposer f) f,
  ) {
    final $$TypeTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.type,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableFilterComposer(
            $db: $db,
            $table: $db.type,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> attributeRefs(
    Expression<bool> Function($$AttributeTableFilterComposer f) f,
  ) {
    final $$AttributeTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.attribute,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttributeTableFilterComposer(
            $db: $db,
            $table: $db.attribute,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MasterTableOrderingComposer
    extends Composer<_$AppDatabase, $MasterTable> {
  $$MasterTableOrderingComposer({
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

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MasterTableAnnotationComposer
    extends Composer<_$AppDatabase, $MasterTable> {
  $$MasterTableAnnotationComposer({
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

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  Expression<T> typeRefs<T extends Object>(
    Expression<T> Function($$TypeTableAnnotationComposer a) f,
  ) {
    final $$TypeTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.type,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableAnnotationComposer(
            $db: $db,
            $table: $db.type,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> attributeRefs<T extends Object>(
    Expression<T> Function($$AttributeTableAnnotationComposer a) f,
  ) {
    final $$AttributeTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.attribute,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttributeTableAnnotationComposer(
            $db: $db,
            $table: $db.attribute,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MasterTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MasterTable,
          MasterData,
          $$MasterTableFilterComposer,
          $$MasterTableOrderingComposer,
          $$MasterTableAnnotationComposer,
          $$MasterTableCreateCompanionBuilder,
          $$MasterTableUpdateCompanionBuilder,
          (MasterData, $$MasterTableReferences),
          MasterData,
          PrefetchHooks Function({bool typeRefs, bool attributeRefs})
        > {
  $$MasterTableTableManager(_$AppDatabase db, $MasterTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$MasterTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$MasterTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$MasterTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<int?> weight = const Value.absent(),
              }) => MasterCompanion(
                itemId: itemId,
                name: name,
                quantity: quantity,
                weight: weight,
              ),
          createCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                required String name,
                required int quantity,
                Value<int?> weight = const Value.absent(),
              }) => MasterCompanion.insert(
                itemId: itemId,
                name: name,
                quantity: quantity,
                weight: weight,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$MasterTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({typeRefs = false, attributeRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (typeRefs) db.type,
                if (attributeRefs) db.attribute,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (typeRefs)
                    await $_getPrefetchedData<
                      MasterData,
                      $MasterTable,
                      TypeData
                    >(
                      currentTable: table,
                      referencedTable: $$MasterTableReferences._typeRefsTable(
                        db,
                      ),
                      managerFromTypedResult:
                          (p0) =>
                              $$MasterTableReferences(db, table, p0).typeRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.itemId == item.itemId,
                          ),
                      typedResults: items,
                    ),
                  if (attributeRefs)
                    await $_getPrefetchedData<
                      MasterData,
                      $MasterTable,
                      AttributeData
                    >(
                      currentTable: table,
                      referencedTable: $$MasterTableReferences
                          ._attributeRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$MasterTableReferences(
                                db,
                                table,
                                p0,
                              ).attributeRefs,
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

typedef $$MasterTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MasterTable,
      MasterData,
      $$MasterTableFilterComposer,
      $$MasterTableOrderingComposer,
      $$MasterTableAnnotationComposer,
      $$MasterTableCreateCompanionBuilder,
      $$MasterTableUpdateCompanionBuilder,
      (MasterData, $$MasterTableReferences),
      MasterData,
      PrefetchHooks Function({bool typeRefs, bool attributeRefs})
    >;
typedef $$TypeTableCreateCompanionBuilder =
    TypeCompanion Function({
      required int itemId,
      required String type,
      Value<String?> name,
      required DriftAny value,
      Value<int> rowid,
    });
typedef $$TypeTableUpdateCompanionBuilder =
    TypeCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<String?> name,
      Value<DriftAny> value,
      Value<int> rowid,
    });

final class $$TypeTableReferences
    extends BaseReferences<_$AppDatabase, $TypeTable, TypeData> {
  $$TypeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MasterTable _itemIdTable(_$AppDatabase db) => db.master.createAlias(
    $_aliasNameGenerator(db.type.itemId, db.master.itemId),
  );

  $$MasterTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$MasterTableTableManager(
      $_db,
      $_db.master,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TypeTableFilterComposer extends Composer<_$AppDatabase, $TypeTable> {
  $$TypeTableFilterComposer({
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

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DriftAny> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  $$MasterTableFilterComposer get itemId {
    final $$MasterTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableFilterComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeTableOrderingComposer extends Composer<_$AppDatabase, $TypeTable> {
  $$TypeTableOrderingComposer({
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

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DriftAny> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  $$MasterTableOrderingComposer get itemId {
    final $$MasterTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableOrderingComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypeTable> {
  $$TypeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DriftAny> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$MasterTableAnnotationComposer get itemId {
    final $$MasterTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableAnnotationComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypeTable,
          TypeData,
          $$TypeTableFilterComposer,
          $$TypeTableOrderingComposer,
          $$TypeTableAnnotationComposer,
          $$TypeTableCreateCompanionBuilder,
          $$TypeTableUpdateCompanionBuilder,
          (TypeData, $$TypeTableReferences),
          TypeData,
          PrefetchHooks Function({bool itemId})
        > {
  $$TypeTableTableManager(_$AppDatabase db, $TypeTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TypeTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TypeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$TypeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<DriftAny> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TypeCompanion(
                itemId: itemId,
                type: type,
                name: name,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<String?> name = const Value.absent(),
                required DriftAny value,
                Value<int> rowid = const Value.absent(),
              }) => TypeCompanion.insert(
                itemId: itemId,
                type: type,
                name: name,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$TypeTableReferences(db, table, e),
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
                            referencedTable: $$TypeTableReferences._itemIdTable(
                              db,
                            ),
                            referencedColumn:
                                $$TypeTableReferences._itemIdTable(db).itemId,
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

typedef $$TypeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypeTable,
      TypeData,
      $$TypeTableFilterComposer,
      $$TypeTableOrderingComposer,
      $$TypeTableAnnotationComposer,
      $$TypeTableCreateCompanionBuilder,
      $$TypeTableUpdateCompanionBuilder,
      (TypeData, $$TypeTableReferences),
      TypeData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$AttributeTableCreateCompanionBuilder =
    AttributeCompanion Function({
      required int itemId,
      required String type,
      Value<String?> name,
      required DriftAny value,
      Value<int> rowid,
    });
typedef $$AttributeTableUpdateCompanionBuilder =
    AttributeCompanion Function({
      Value<int> itemId,
      Value<String> type,
      Value<String?> name,
      Value<DriftAny> value,
      Value<int> rowid,
    });

final class $$AttributeTableReferences
    extends BaseReferences<_$AppDatabase, $AttributeTable, AttributeData> {
  $$AttributeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MasterTable _itemIdTable(_$AppDatabase db) => db.master.createAlias(
    $_aliasNameGenerator(db.attribute.itemId, db.master.itemId),
  );

  $$MasterTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$MasterTableTableManager(
      $_db,
      $_db.master,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$AttributeTableFilterComposer
    extends Composer<_$AppDatabase, $AttributeTable> {
  $$AttributeTableFilterComposer({
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

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DriftAny> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  $$MasterTableFilterComposer get itemId {
    final $$MasterTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableFilterComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttributeTableOrderingComposer
    extends Composer<_$AppDatabase, $AttributeTable> {
  $$AttributeTableOrderingComposer({
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

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DriftAny> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  $$MasterTableOrderingComposer get itemId {
    final $$MasterTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableOrderingComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttributeTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttributeTable> {
  $$AttributeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DriftAny> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$MasterTableAnnotationComposer get itemId {
    final $$MasterTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.master,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MasterTableAnnotationComposer(
            $db: $db,
            $table: $db.master,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttributeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AttributeTable,
          AttributeData,
          $$AttributeTableFilterComposer,
          $$AttributeTableOrderingComposer,
          $$AttributeTableAnnotationComposer,
          $$AttributeTableCreateCompanionBuilder,
          $$AttributeTableUpdateCompanionBuilder,
          (AttributeData, $$AttributeTableReferences),
          AttributeData,
          PrefetchHooks Function({bool itemId})
        > {
  $$AttributeTableTableManager(_$AppDatabase db, $AttributeTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$AttributeTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$AttributeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$AttributeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<DriftAny> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AttributeCompanion(
                itemId: itemId,
                type: type,
                name: name,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int itemId,
                required String type,
                Value<String?> name = const Value.absent(),
                required DriftAny value,
                Value<int> rowid = const Value.absent(),
              }) => AttributeCompanion.insert(
                itemId: itemId,
                type: type,
                name: name,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$AttributeTableReferences(db, table, e),
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
                            referencedTable: $$AttributeTableReferences
                                ._itemIdTable(db),
                            referencedColumn:
                                $$AttributeTableReferences
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

typedef $$AttributeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AttributeTable,
      AttributeData,
      $$AttributeTableFilterComposer,
      $$AttributeTableOrderingComposer,
      $$AttributeTableAnnotationComposer,
      $$AttributeTableCreateCompanionBuilder,
      $$AttributeTableUpdateCompanionBuilder,
      (AttributeData, $$AttributeTableReferences),
      AttributeData,
      PrefetchHooks Function({bool itemId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MasterTableTableManager get master =>
      $$MasterTableTableManager(_db, _db.master);
  $$TypeTableTableManager get type => $$TypeTableTableManager(_db, _db.type);
  $$AttributeTableTableManager get attribute =>
      $$AttributeTableTableManager(_db, _db.attribute);
}
