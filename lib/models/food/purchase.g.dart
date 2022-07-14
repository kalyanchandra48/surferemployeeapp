// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPurchaseCollection on Isar {
  IsarCollection<Purchase> get purchases => getCollection();
}

const PurchaseSchema = CollectionSchema(
  name: 'Purchase',
  schema:
      '{"name":"Purchase","idName":"id","properties":[{"name":"PurchaseId","type":"String"},{"name":"datetime","type":"Long"},{"name":"hashCode","type":"Long"},{"name":"items","type":"String"},{"name":"total","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'PurchaseId': 0,
    'datetime': 1,
    'hashCode': 2,
    'items': 3,
    'total': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _purchaseGetId,
  setId: _purchaseSetId,
  getLinks: _purchaseGetLinks,
  attachLinks: _purchaseAttachLinks,
  serializeNative: _purchaseSerializeNative,
  deserializeNative: _purchaseDeserializeNative,
  deserializePropNative: _purchaseDeserializePropNative,
  serializeWeb: _purchaseSerializeWeb,
  deserializeWeb: _purchaseDeserializeWeb,
  deserializePropWeb: _purchaseDeserializePropWeb,
  version: 3,
);

int? _purchaseGetId(Purchase object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _purchaseSetId(Purchase object, int id) {
  object.id = id;
}

List<IsarLinkBase> _purchaseGetLinks(Purchase object) {
  return [];
}

void _purchaseSerializeNative(
    IsarCollection<Purchase> collection,
    IsarRawObject rawObj,
    Purchase object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.purchaseId;
  final _PurchaseId = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_PurchaseId.length) as int;
  final value1 = object.datetime;
  final _datetime = value1;
  final value2 = object.hashCode;
  final _hashCode = value2;
  final value3 = object.item;
  final _items = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_items.length) as int;
  final value4 = object.total;
  final _total = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _PurchaseId);
  writer.writeLong(offsets[1], _datetime);
  writer.writeLong(offsets[2], _hashCode);
  writer.writeBytes(offsets[3], _items);
  writer.writeLong(offsets[4], _total);
}

Purchase _purchaseDeserializeNative(IsarCollection<Purchase> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Purchase(
    purchaseId: reader.readString(offsets[0]),
    datetime: reader.readLong(offsets[1]),
    id: id,
    item: reader.readString(offsets[3]),
    total: reader.readLong(offsets[4]),
  );
  return object;
}

P _purchaseDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _purchaseSerializeWeb(
    IsarCollection<Purchase> collection, Purchase object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'PurchaseId', object.purchaseId);
  IsarNative.jsObjectSet(jsObj, 'datetime', object.datetime);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'items', object.item);
  IsarNative.jsObjectSet(jsObj, 'total', object.total);
  return jsObj;
}

Purchase _purchaseDeserializeWeb(
    IsarCollection<Purchase> collection, dynamic jsObj) {
  final object = Purchase(
    purchaseId: IsarNative.jsObjectGet(jsObj, 'PurchaseId') ?? '',
    datetime:
        IsarNative.jsObjectGet(jsObj, 'datetime') ?? double.negativeInfinity,
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    item: IsarNative.jsObjectGet(jsObj, 'items') ?? '',
    total: IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity,
  );
  return object;
}

P _purchaseDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'PurchaseId':
      return (IsarNative.jsObjectGet(jsObj, 'PurchaseId') ?? '') as P;
    case 'datetime':
      return (IsarNative.jsObjectGet(jsObj, 'datetime') ??
          double.negativeInfinity) as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'items':
      return (IsarNative.jsObjectGet(jsObj, 'items') ?? '') as P;
    case 'total':
      return (IsarNative.jsObjectGet(jsObj, 'total') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _purchaseAttachLinks(IsarCollection col, int id, Purchase object) {}

extension PurchaseQueryWhereSort on QueryBuilder<Purchase, Purchase, QWhere> {
  QueryBuilder<Purchase, Purchase, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PurchaseQueryWhere on QueryBuilder<Purchase, Purchase, QWhereClause> {
  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idBetween(
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

extension PurchaseQueryFilter
    on QueryBuilder<Purchase, Purchase, QFilterCondition> {
  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'PurchaseId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'PurchaseId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'PurchaseId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> datetimeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'datetime',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> datetimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'datetime',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> datetimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'datetime',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> datetimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'datetime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemEqualTo(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemGreaterThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemLessThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemBetween(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemStartsWith(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemEndsWith(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'items',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'items',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'total',
      value: value,
    ));
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalGreaterThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalLessThan(
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

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalBetween(
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

extension PurchaseQueryLinks
    on QueryBuilder<Purchase, Purchase, QFilterCondition> {}

extension PurchaseQueryWhereSortBy
    on QueryBuilder<Purchase, Purchase, QSortBy> {
  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPurchaseId() {
    return addSortByInternal('PurchaseId', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPurchaseIdDesc() {
    return addSortByInternal('PurchaseId', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDatetime() {
    return addSortByInternal('datetime', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDatetimeDesc() {
    return addSortByInternal('datetime', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByItem() {
    return addSortByInternal('items', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByItemDesc() {
    return addSortByInternal('items', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }
}

extension PurchaseQueryWhereSortThenBy
    on QueryBuilder<Purchase, Purchase, QSortThenBy> {
  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPurchaseId() {
    return addSortByInternal('PurchaseId', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPurchaseIdDesc() {
    return addSortByInternal('PurchaseId', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDatetime() {
    return addSortByInternal('datetime', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDatetimeDesc() {
    return addSortByInternal('datetime', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByItem() {
    return addSortByInternal('items', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByItemDesc() {
    return addSortByInternal('items', Sort.desc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotal() {
    return addSortByInternal('total', Sort.asc);
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalDesc() {
    return addSortByInternal('total', Sort.desc);
  }
}

extension PurchaseQueryWhereDistinct
    on QueryBuilder<Purchase, Purchase, QDistinct> {
  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPurchaseId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('PurchaseId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByDatetime() {
    return addDistinctByInternal('datetime');
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByItem(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('items', caseSensitive: caseSensitive);
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotal() {
    return addDistinctByInternal('total');
  }
}

extension PurchaseQueryProperty
    on QueryBuilder<Purchase, Purchase, QQueryProperty> {
  QueryBuilder<Purchase, String, QQueryOperations> purchaseIdProperty() {
    return addPropertyNameInternal('PurchaseId');
  }

  QueryBuilder<Purchase, int, QQueryOperations> datetimeProperty() {
    return addPropertyNameInternal('datetime');
  }

  QueryBuilder<Purchase, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<Purchase, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Purchase, String, QQueryOperations> itemProperty() {
    return addPropertyNameInternal('items');
  }

  QueryBuilder<Purchase, int, QQueryOperations> totalProperty() {
    return addPropertyNameInternal('total');
  }
}
