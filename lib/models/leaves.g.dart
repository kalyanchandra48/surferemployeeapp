// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaves.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetLeavesCollection on Isar {
  IsarCollection<Leaves> get leavess => getCollection();
}

const LeavesSchema = CollectionSchema(
  name: 'Leaves',
  schema:
      '{"name":"Leaves","idName":"id","properties":[{"name":"category","type":"String"},{"name":"description","type":"String"},{"name":"fromDate","type":"Long"},{"name":"hashCode","type":"Long"},{"name":"leaveID","type":"String"},{"name":"title","type":"String"},{"name":"toDate","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'category': 0,
    'description': 1,
    'fromDate': 2,
    'hashCode': 3,
    'leaveID': 4,
    'title': 5,
    'toDate': 6
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _leavesGetId,
  setId: _leavesSetId,
  getLinks: _leavesGetLinks,
  attachLinks: _leavesAttachLinks,
  serializeNative: _leavesSerializeNative,
  deserializeNative: _leavesDeserializeNative,
  deserializePropNative: _leavesDeserializePropNative,
  serializeWeb: _leavesSerializeWeb,
  deserializeWeb: _leavesDeserializeWeb,
  deserializePropWeb: _leavesDeserializePropWeb,
  version: 3,
);

int? _leavesGetId(Leaves object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _leavesSetId(Leaves object, int id) {
  object.id = id;
}

List<IsarLinkBase> _leavesGetLinks(Leaves object) {
  return [];
}

void _leavesSerializeNative(
    IsarCollection<Leaves> collection,
    IsarRawObject rawObj,
    Leaves object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.category;
  final _category = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_category.length) as int;
  final value1 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_description.length) as int;
  final value2 = object.fromDate;
  final _fromDate = value2;
  final value3 = object.hashCode;
  final _hashCode = value3;
  final value4 = object.leaveId;
  final _leaveID = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_leaveID.length) as int;
  final value5 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_title.length) as int;
  final value6 = object.toDate;
  final _toDate = value6;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _category);
  writer.writeBytes(offsets[1], _description);
  writer.writeDateTime(offsets[2], _fromDate);
  writer.writeLong(offsets[3], _hashCode);
  writer.writeBytes(offsets[4], _leaveID);
  writer.writeBytes(offsets[5], _title);
  writer.writeDateTime(offsets[6], _toDate);
}

Leaves _leavesDeserializeNative(IsarCollection<Leaves> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Leaves(
    category: reader.readString(offsets[0]),
    description: reader.readString(offsets[1]),
    fromDate: reader.readDateTime(offsets[2]),
    leaveId: reader.readString(offsets[4]),
    title: reader.readString(offsets[5]),
    toDate: reader.readDateTime(offsets[6]),
  );
  object.id = id;
  return object;
}

P _leavesDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _leavesSerializeWeb(IsarCollection<Leaves> collection, Leaves object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'category', object.category);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(
      jsObj, 'fromDate', object.fromDate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'leaveID', object.leaveId);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  IsarNative.jsObjectSet(
      jsObj, 'toDate', object.toDate.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

Leaves _leavesDeserializeWeb(IsarCollection<Leaves> collection, dynamic jsObj) {
  final object = Leaves(
    category: IsarNative.jsObjectGet(jsObj, 'category') ?? '',
    description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    fromDate: IsarNative.jsObjectGet(jsObj, 'fromDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'fromDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    leaveId: IsarNative.jsObjectGet(jsObj, 'leaveID') ?? '',
    title: IsarNative.jsObjectGet(jsObj, 'title') ?? '',
    toDate: IsarNative.jsObjectGet(jsObj, 'toDate') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'toDate'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _leavesDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'category':
      return (IsarNative.jsObjectGet(jsObj, 'category') ?? '') as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'fromDate':
      return (IsarNative.jsObjectGet(jsObj, 'fromDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'fromDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'leaveID':
      return (IsarNative.jsObjectGet(jsObj, 'leaveID') ?? '') as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    case 'toDate':
      return (IsarNative.jsObjectGet(jsObj, 'toDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'toDate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _leavesAttachLinks(IsarCollection col, int id, Leaves object) {}

extension LeavesQueryWhereSort on QueryBuilder<Leaves, Leaves, QWhere> {
  QueryBuilder<Leaves, Leaves, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension LeavesQueryWhere on QueryBuilder<Leaves, Leaves, QWhereClause> {
  QueryBuilder<Leaves, Leaves, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Leaves, Leaves, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Leaves, Leaves, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Leaves, Leaves, QAfterWhereClause> idBetween(
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

extension LeavesQueryFilter on QueryBuilder<Leaves, Leaves, QFilterCondition> {
  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'category',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> fromDateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'fromDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> fromDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'fromDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> fromDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'fromDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> fromDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fromDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'leaveID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'leaveID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> leaveIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'leaveID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> toDateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'toDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> toDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'toDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> toDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'toDate',
      value: value,
    ));
  }

  QueryBuilder<Leaves, Leaves, QAfterFilterCondition> toDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'toDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension LeavesQueryLinks on QueryBuilder<Leaves, Leaves, QFilterCondition> {}

extension LeavesQueryWhereSortBy on QueryBuilder<Leaves, Leaves, QSortBy> {
  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByFromDate() {
    return addSortByInternal('fromDate', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByFromDateDesc() {
    return addSortByInternal('fromDate', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByLeaveId() {
    return addSortByInternal('leaveID', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByLeaveIdDesc() {
    return addSortByInternal('leaveID', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByToDate() {
    return addSortByInternal('toDate', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> sortByToDateDesc() {
    return addSortByInternal('toDate', Sort.desc);
  }
}

extension LeavesQueryWhereSortThenBy
    on QueryBuilder<Leaves, Leaves, QSortThenBy> {
  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByFromDate() {
    return addSortByInternal('fromDate', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByFromDateDesc() {
    return addSortByInternal('fromDate', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByLeaveId() {
    return addSortByInternal('leaveID', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByLeaveIdDesc() {
    return addSortByInternal('leaveID', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByToDate() {
    return addSortByInternal('toDate', Sort.asc);
  }

  QueryBuilder<Leaves, Leaves, QAfterSortBy> thenByToDateDesc() {
    return addSortByInternal('toDate', Sort.desc);
  }
}

extension LeavesQueryWhereDistinct on QueryBuilder<Leaves, Leaves, QDistinct> {
  QueryBuilder<Leaves, Leaves, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByFromDate() {
    return addDistinctByInternal('fromDate');
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByLeaveId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('leaveID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<Leaves, Leaves, QDistinct> distinctByToDate() {
    return addDistinctByInternal('toDate');
  }
}

extension LeavesQueryProperty on QueryBuilder<Leaves, Leaves, QQueryProperty> {
  QueryBuilder<Leaves, String, QQueryOperations> categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<Leaves, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Leaves, DateTime, QQueryOperations> fromDateProperty() {
    return addPropertyNameInternal('fromDate');
  }

  QueryBuilder<Leaves, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<Leaves, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Leaves, String, QQueryOperations> leaveIdProperty() {
    return addPropertyNameInternal('leaveID');
  }

  QueryBuilder<Leaves, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<Leaves, DateTime, QQueryOperations> toDateProperty() {
    return addPropertyNameInternal('toDate');
  }
}
