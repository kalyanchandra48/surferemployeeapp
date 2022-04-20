// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetUserCollection on Isar {
  IsarCollection<User> get users {
    return getCollection('User');
  }
}

final UserSchema = CollectionSchema(
  name: 'User',
  schema:
      '{"name":"User","idName":"id","properties":[{"name":"dob","type":"String"},{"name":"email","type":"String"},{"name":"firstname","type":"String"},{"name":"hashCode","type":"Long"},{"name":"imageUrl","type":"String"},{"name":"insuranceNum","type":"String"},{"name":"lastname","type":"String"},{"name":"location","type":"String"},{"name":"pfNum","type":"String"},{"name":"userid","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _UserNativeAdapter(),
  webAdapter: const _UserWebAdapter(),
  idName: 'id',
  propertyIds: {
    'dob': 0,
    'email': 1,
    'firstname': 2,
    'hashCode': 3,
    'imageUrl': 4,
    'insuranceNum': 5,
    'lastname': 6,
    'location': 7,
    'pfNum': 8,
    'userid': 9
  },
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _UserWebAdapter extends IsarWebTypeAdapter<User> {
  const _UserWebAdapter();

  @override
  Object serialize(IsarCollection<User> collection, User object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'dob', object.dob);
    IsarNative.jsObjectSet(jsObj, 'email', object.email);
    IsarNative.jsObjectSet(jsObj, 'firstname', object.firstname);
    IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'imageUrl', object.imageUrl);
    IsarNative.jsObjectSet(jsObj, 'insuranceNum', object.insuranceNum);
    IsarNative.jsObjectSet(jsObj, 'lastname', object.lastname);
    IsarNative.jsObjectSet(jsObj, 'location', object.location);
    IsarNative.jsObjectSet(jsObj, 'pfNum', object.pfNum);
    IsarNative.jsObjectSet(jsObj, 'userid', object.userid);
    return jsObj;
  }

  @override
  User deserialize(IsarCollection<User> collection, dynamic jsObj) {
    final object = User(
      dob: IsarNative.jsObjectGet(jsObj, 'dob') ?? '',
      email: IsarNative.jsObjectGet(jsObj, 'email') ?? '',
      firstname: IsarNative.jsObjectGet(jsObj, 'firstname') ?? '',
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      imageUrl: IsarNative.jsObjectGet(jsObj, 'imageUrl') ?? '',
      insuranceNum: IsarNative.jsObjectGet(jsObj, 'insuranceNum') ?? '',
      lastname: IsarNative.jsObjectGet(jsObj, 'lastname') ?? '',
      location: IsarNative.jsObjectGet(jsObj, 'location') ?? '',
      pfNum: IsarNative.jsObjectGet(jsObj, 'pfNum') ?? '',
      userid: IsarNative.jsObjectGet(jsObj, 'userid') ?? '',
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'dob':
        return (IsarNative.jsObjectGet(jsObj, 'dob') ?? '') as P;
      case 'email':
        return (IsarNative.jsObjectGet(jsObj, 'email') ?? '') as P;
      case 'firstname':
        return (IsarNative.jsObjectGet(jsObj, 'firstname') ?? '') as P;
      case 'hashCode':
        return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'imageUrl':
        return (IsarNative.jsObjectGet(jsObj, 'imageUrl') ?? '') as P;
      case 'insuranceNum':
        return (IsarNative.jsObjectGet(jsObj, 'insuranceNum') ?? '') as P;
      case 'lastname':
        return (IsarNative.jsObjectGet(jsObj, 'lastname') ?? '') as P;
      case 'location':
        return (IsarNative.jsObjectGet(jsObj, 'location') ?? '') as P;
      case 'pfNum':
        return (IsarNative.jsObjectGet(jsObj, 'pfNum') ?? '') as P;
      case 'userid':
        return (IsarNative.jsObjectGet(jsObj, 'userid') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, User object) {}
}

class _UserNativeAdapter extends IsarNativeTypeAdapter<User> {
  const _UserNativeAdapter();

  @override
  void serialize(IsarCollection<User> collection, IsarRawObject rawObj,
      User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.dob;
    final _dob = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_dob.length) as int;
    final value1 = object.email;
    final _email = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_email.length) as int;
    final value2 = object.firstname;
    final _firstname = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_firstname.length) as int;
    final value3 = object.hashCode;
    final _hashCode = value3;
    final value4 = object.imageUrl;
    final _imageUrl = IsarBinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += (_imageUrl.length) as int;
    final value5 = object.insuranceNum;
    final _insuranceNum = IsarBinaryWriter.utf8Encoder.convert(value5);
    dynamicSize += (_insuranceNum.length) as int;
    final value6 = object.lastname;
    final _lastname = IsarBinaryWriter.utf8Encoder.convert(value6);
    dynamicSize += (_lastname.length) as int;
    final value7 = object.location;
    final _location = IsarBinaryWriter.utf8Encoder.convert(value7);
    dynamicSize += (_location.length) as int;
    final value8 = object.pfNum;
    final _pfNum = IsarBinaryWriter.utf8Encoder.convert(value8);
    dynamicSize += (_pfNum.length) as int;
    final value9 = object.userid;
    final _userid = IsarBinaryWriter.utf8Encoder.convert(value9);
    dynamicSize += (_userid.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _dob);
    writer.writeBytes(offsets[1], _email);
    writer.writeBytes(offsets[2], _firstname);
    writer.writeLong(offsets[3], _hashCode);
    writer.writeBytes(offsets[4], _imageUrl);
    writer.writeBytes(offsets[5], _insuranceNum);
    writer.writeBytes(offsets[6], _lastname);
    writer.writeBytes(offsets[7], _location);
    writer.writeBytes(offsets[8], _pfNum);
    writer.writeBytes(offsets[9], _userid);
  }

  @override
  User deserialize(IsarCollection<User> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = User(
      dob: reader.readString(offsets[0]),
      email: reader.readString(offsets[1]),
      firstname: reader.readString(offsets[2]),
      id: id,
      imageUrl: reader.readString(offsets[4]),
      insuranceNum: reader.readString(offsets[5]),
      lastname: reader.readString(offsets[6]),
      location: reader.readString(offsets[7]),
      pfNum: reader.readString(offsets[8]),
      userid: reader.readString(offsets[9]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readString(offset)) as P;
      case 3:
        return (reader.readLong(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      case 5:
        return (reader.readString(offset)) as P;
      case 6:
        return (reader.readString(offset)) as P;
      case 7:
        return (reader.readString(offset)) as P;
      case 8:
        return (reader.readString(offset)) as P;
      case 9:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, User object) {}
}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<User, User, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> dobEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dob',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'dob',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> dobMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'dob',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'email',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'firstname',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'firstname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'firstname',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<User, User, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
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

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'imageUrl',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'imageUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> imageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'imageUrl',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'insuranceNum',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'insuranceNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> insuranceNumMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'insuranceNum',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastname',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastname',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastname',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'location',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'location',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pfNum',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'pfNum',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> pfNumMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'pfNum',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> useridMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByDob() {
    return addSortByInternal('dob', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByDobDesc() {
    return addSortByInternal('dob', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFirstname() {
    return addSortByInternal('firstname', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFirstnameDesc() {
    return addSortByInternal('firstname', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByImageUrl() {
    return addSortByInternal('imageUrl', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByImageUrlDesc() {
    return addSortByInternal('imageUrl', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByInsuranceNum() {
    return addSortByInternal('insuranceNum', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByInsuranceNumDesc() {
    return addSortByInternal('insuranceNum', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLastname() {
    return addSortByInternal('lastname', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLastnameDesc() {
    return addSortByInternal('lastname', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLocation() {
    return addSortByInternal('location', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLocationDesc() {
    return addSortByInternal('location', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByPfNum() {
    return addSortByInternal('pfNum', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByPfNumDesc() {
    return addSortByInternal('pfNum', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserid() {
    return addSortByInternal('userid', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUseridDesc() {
    return addSortByInternal('userid', Sort.desc);
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByDob() {
    return addSortByInternal('dob', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByDobDesc() {
    return addSortByInternal('dob', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFirstname() {
    return addSortByInternal('firstname', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFirstnameDesc() {
    return addSortByInternal('firstname', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByImageUrl() {
    return addSortByInternal('imageUrl', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByImageUrlDesc() {
    return addSortByInternal('imageUrl', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByInsuranceNum() {
    return addSortByInternal('insuranceNum', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByInsuranceNumDesc() {
    return addSortByInternal('insuranceNum', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLastname() {
    return addSortByInternal('lastname', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLastnameDesc() {
    return addSortByInternal('lastname', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLocation() {
    return addSortByInternal('location', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLocationDesc() {
    return addSortByInternal('location', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByPfNum() {
    return addSortByInternal('pfNum', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByPfNumDesc() {
    return addSortByInternal('pfNum', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserid() {
    return addSortByInternal('userid', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUseridDesc() {
    return addSortByInternal('userid', Sort.desc);
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByDob(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('dob', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByFirstname(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('firstname', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<User, User, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<User, User, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('imageUrl', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByInsuranceNum(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('insuranceNum', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByLastname(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastname', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('location', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByPfNum(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pfNum', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByUserid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userid', caseSensitive: caseSensitive);
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, String, QQueryOperations> dobProperty() {
    return addPropertyNameInternal('dob');
  }

  QueryBuilder<User, String, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<User, String, QQueryOperations> firstnameProperty() {
    return addPropertyNameInternal('firstname');
  }

  QueryBuilder<User, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<User, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<User, String, QQueryOperations> imageUrlProperty() {
    return addPropertyNameInternal('imageUrl');
  }

  QueryBuilder<User, String, QQueryOperations> insuranceNumProperty() {
    return addPropertyNameInternal('insuranceNum');
  }

  QueryBuilder<User, String, QQueryOperations> lastnameProperty() {
    return addPropertyNameInternal('lastname');
  }

  QueryBuilder<User, String, QQueryOperations> locationProperty() {
    return addPropertyNameInternal('location');
  }

  QueryBuilder<User, String, QQueryOperations> pfNumProperty() {
    return addPropertyNameInternal('pfNum');
  }

  QueryBuilder<User, String, QQueryOperations> useridProperty() {
    return addPropertyNameInternal('userid');
  }
}
