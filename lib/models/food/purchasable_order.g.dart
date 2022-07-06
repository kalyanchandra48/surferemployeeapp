// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchasable_order.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPurchasableOrderOneCollection on Isar {
  IsarCollection<PurchasableOrderOne> get purchasableOrderOnes =>
      getCollection();
}

const PurchasableOrderOneSchema = CollectionSchema(
  name: 'PurchasableOrderOne',
  schema:
      '{"name":"PurchasableOrderOne","idName":"id","properties":[{"name":"hashCode","type":"Long"},{"name":"items","type":"String"},{"name":"orderPlacedAt","type":"Long"},{"name":"total","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'hashCode': 0, 'items': 1, 'orderPlacedAt': 2, 'total': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _purchasableOrderOneGetId,
  setId: _purchasableOrderOneSetId,
  getLinks: _purchasableOrderOneGetLinks,
  attachLinks: _purchasableOrderOneAttachLinks,
  serializeNative: _purchasableOrderOneSerializeNative,
  deserializeNative: _purchasableOrderOneDeserializeNative,
  deserializePropNative: _purchasableOrderOneDeserializePropNative,
  serializeWeb: _purchasableOrderOneSerializeWeb,
  deserializeWeb: _purchasableOrderOneDeserializeWeb,
  deserializePropWeb: _purchasableOrderOneDeserializePropWeb,
  version: 3,
);

int? _purchasableOrderOneGetId(PurchasableOrderOne object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _purchasableOrderOneSetId(PurchasableOrderOne object, int id) {
  object.id = id;
}

List<IsarLinkBase> _purchasableOrderOneGetLinks(PurchasableOrderOne object) {
  return [];
}

void _purchasableOrderOneSerializeNative(
    IsarCollection<PurchasableOrderOne> collection,
    IsarRawObject rawObj,
    PurchasableOrderOne object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.hashCode;
  final _hashCode = value0;
  final value1 = object.items;
  final _items = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_items.length) as int;
  final value2 = object.orderPlacedAt;
  final _orderPlacedAt = value2;
  final value3 = object.total;
  final _total = value3;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _hashCode);
  writer.writeBytes(offsets[1], _items);
  writer.writeDateTime(offsets[2], _orderPlacedAt);
  writer.writeLong(offsets[3], _total);
}

PurchasableOrderOne _purchasableOrderOneDeserializeNative(
    IsarCollection<PurchasableOrderOne> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = PurchasableOrderOne(
    id: id,
    items: reader.readString(offsets[1]),
    orderPlacedAt: reader.readDateTime(offsets[2]),
    total: reader.readLong(offsets[3]),
  );
  return object;
}

P _purchasableOrderOneDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _purchasableOrderOneSerializeWeb(
    IsarCollection<PurchasableOrderOne> collection,
    PurchasableOrderOne object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'items', object.items);
  IsarNative.jsObjectSet(jsObj, 'orderPlacedAt',
      object.orderPlacedAt.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'total', object.total);
  return jsObj;
}

PurchasableOrderOne _purchasableOrderOneDeserializeWeb(
    IsarCollection<PurchasableOrderOne> collection, dynamic jsObj) {
  final object = PurchasableOrderOne(
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    items: IsarNative.jsObjectGet(jsObj, 'items') ?? '',
    orderPlacedAt: IsarNative.jsObjectGet(jsObj, 'orderPlacedAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'orderPlacedAt'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    total: IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity,
  );
  return object;
}

P _purchasableOrderOneDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'items':
      return (IsarNative.jsObjectGet(jsObj, 'items') ?? '') as P;
    case 'orderPlacedAt':
      return (IsarNative.jsObjectGet(jsObj, 'orderPlacedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'orderPlacedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'total':
      return (IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _purchasableOrderOneAttachLinks(
    IsarCollection col, int id, PurchasableOrderOne object) {}

extension PurchasableOrderOneQueryWhereSort
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QWhere> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PurchasableOrderOneQueryWhere
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QWhereClause> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhereClause>
      idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterWhereClause>
      idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension PurchasableOrderOneQueryFilter on QueryBuilder<PurchasableOrderOne,
    PurchasableOrderOne, QFilterCondition> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'items',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      itemsMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'items',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      orderPlacedAtEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'orderPlacedAt',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      orderPlacedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'orderPlacedAt',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      orderPlacedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'orderPlacedAt',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      orderPlacedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orderPlacedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      totalEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      totalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      totalLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterFilterCondition>
      totalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'total',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PurchasableOrderOneQueryLinks on QueryBuilder<PurchasableOrderOne,
    PurchasableOrderOne, QFilterCondition> {}

extension PurchasableOrderOneQueryWhereSortBy
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QSortBy> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByItems() {
    return addSortByInternal('items', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByItemsDesc() {
    return addSortByInternal('items', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByOrderPlacedAt() {
    return addSortByInternal('orderPlacedAt', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByOrderPlacedAtDesc() {
    return addSortByInternal('orderPlacedAt', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      sortByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }
}

extension PurchasableOrderOneQueryWhereSortThenBy
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QSortThenBy> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByItems() {
    return addSortByInternal('items', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByItemsDesc() {
    return addSortByInternal('items', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByOrderPlacedAt() {
    return addSortByInternal('orderPlacedAt', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByOrderPlacedAtDesc() {
    return addSortByInternal('orderPlacedAt', Sort.desc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QAfterSortBy>
      thenByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }
}

extension PurchasableOrderOneQueryWhereDistinct
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct> {
  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct>
      distinctByItems({bool caseSensitive = true}) {
    return addDistinctByInternal('items', caseSensitive: caseSensitive);
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct>
      distinctByOrderPlacedAt() {
    return addDistinctByInternal('orderPlacedAt');
  }

  QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QDistinct>
      distinctByTotal() {
    return addDistinctByInternal('total');
  }
}

extension PurchasableOrderOneQueryProperty
    on QueryBuilder<PurchasableOrderOne, PurchasableOrderOne, QQueryProperty> {
  QueryBuilder<PurchasableOrderOne, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<PurchasableOrderOne, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PurchasableOrderOne, String, QQueryOperations> itemsProperty() {
    return addPropertyNameInternal('items');
  }

  QueryBuilder<PurchasableOrderOne, DateTime, QQueryOperations>
      orderPlacedAtProperty() {
    return addPropertyNameInternal('orderPlacedAt');
  }

  QueryBuilder<PurchasableOrderOne, int, QQueryOperations> totalProperty() {
    return addPropertyNameInternal('total');
  }
}
