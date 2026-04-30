// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReminderCollectionCollection on Isar {
  IsarCollection<ReminderCollection> get reminderCollections =>
      this.collection();
}

const ReminderCollectionSchema = CollectionSchema(
  name: r'ReminderCollection',
  id: 2334535023166308683,
  properties: {
    r'calendarEventId': PropertySchema(
      id: 0,
      name: r'calendarEventId',
      type: IsarType.string,
    ),
    r'customRingtonePath': PropertySchema(
      id: 1,
      name: r'customRingtonePath',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'isAlarm': PropertySchema(
      id: 3,
      name: r'isAlarm',
      type: IsarType.bool,
    ),
    r'isCompleted': PropertySchema(
      id: 4,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'isRecurring': PropertySchema(
      id: 5,
      name: r'isRecurring',
      type: IsarType.bool,
    ),
    r'requireCalendarSync': PropertySchema(
      id: 6,
      name: r'requireCalendarSync',
      type: IsarType.bool,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'triggerTime': PropertySchema(
      id: 8,
      name: r'triggerTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _reminderCollectionEstimateSize,
  serialize: _reminderCollectionSerialize,
  deserialize: _reminderCollectionDeserialize,
  deserializeProp: _reminderCollectionDeserializeProp,
  idName: r'id',
  indexes: {
    r'triggerTime': IndexSchema(
      id: -2473002714186202306,
      name: r'triggerTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'triggerTime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _reminderCollectionGetId,
  getLinks: _reminderCollectionGetLinks,
  attach: _reminderCollectionAttach,
  version: '3.1.0+1',
);

int _reminderCollectionEstimateSize(
  ReminderCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.calendarEventId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customRingtonePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _reminderCollectionSerialize(
  ReminderCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.calendarEventId);
  writer.writeString(offsets[1], object.customRingtonePath);
  writer.writeString(offsets[2], object.description);
  writer.writeBool(offsets[3], object.isAlarm);
  writer.writeBool(offsets[4], object.isCompleted);
  writer.writeBool(offsets[5], object.isRecurring);
  writer.writeBool(offsets[6], object.requireCalendarSync);
  writer.writeString(offsets[7], object.title);
  writer.writeDateTime(offsets[8], object.triggerTime);
}

ReminderCollection _reminderCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReminderCollection();
  object.calendarEventId = reader.readStringOrNull(offsets[0]);
  object.customRingtonePath = reader.readStringOrNull(offsets[1]);
  object.description = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.isAlarm = reader.readBool(offsets[3]);
  object.isCompleted = reader.readBool(offsets[4]);
  object.isRecurring = reader.readBool(offsets[5]);
  object.requireCalendarSync = reader.readBool(offsets[6]);
  object.title = reader.readString(offsets[7]);
  object.triggerTime = reader.readDateTime(offsets[8]);
  return object;
}

P _reminderCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reminderCollectionGetId(ReminderCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reminderCollectionGetLinks(
    ReminderCollection object) {
  return [];
}

void _reminderCollectionAttach(
    IsarCollection<dynamic> col, Id id, ReminderCollection object) {
  object.id = id;
}

extension ReminderCollectionQueryWhereSort
    on QueryBuilder<ReminderCollection, ReminderCollection, QWhere> {
  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhere>
      anyTriggerTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'triggerTime'),
      );
    });
  }
}

extension ReminderCollectionQueryWhere
    on QueryBuilder<ReminderCollection, ReminderCollection, QWhereClause> {
  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      triggerTimeEqualTo(DateTime triggerTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'triggerTime',
        value: [triggerTime],
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      triggerTimeNotEqualTo(DateTime triggerTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'triggerTime',
              lower: [],
              upper: [triggerTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'triggerTime',
              lower: [triggerTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'triggerTime',
              lower: [triggerTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'triggerTime',
              lower: [],
              upper: [triggerTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      triggerTimeGreaterThan(
    DateTime triggerTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'triggerTime',
        lower: [triggerTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      triggerTimeLessThan(
    DateTime triggerTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'triggerTime',
        lower: [],
        upper: [triggerTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterWhereClause>
      triggerTimeBetween(
    DateTime lowerTriggerTime,
    DateTime upperTriggerTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'triggerTime',
        lower: [lowerTriggerTime],
        includeLower: includeLower,
        upper: [upperTriggerTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReminderCollectionQueryFilter
    on QueryBuilder<ReminderCollection, ReminderCollection, QFilterCondition> {
  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'calendarEventId',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'calendarEventId',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calendarEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'calendarEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'calendarEventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calendarEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      calendarEventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'calendarEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customRingtonePath',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customRingtonePath',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customRingtonePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customRingtonePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customRingtonePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customRingtonePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      customRingtonePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customRingtonePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      isAlarmEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAlarm',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      isCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      isRecurringEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRecurring',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      requireCalendarSyncEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requireCalendarSync',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      triggerTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'triggerTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      triggerTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'triggerTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      triggerTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'triggerTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterFilterCondition>
      triggerTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'triggerTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReminderCollectionQueryObject
    on QueryBuilder<ReminderCollection, ReminderCollection, QFilterCondition> {}

extension ReminderCollectionQueryLinks
    on QueryBuilder<ReminderCollection, ReminderCollection, QFilterCondition> {}

extension ReminderCollectionQuerySortBy
    on QueryBuilder<ReminderCollection, ReminderCollection, QSortBy> {
  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByCalendarEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarEventId', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByCalendarEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarEventId', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByCustomRingtonePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customRingtonePath', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByCustomRingtonePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customRingtonePath', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsAlarm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlarm', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsAlarmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlarm', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByRequireCalendarSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requireCalendarSync', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByRequireCalendarSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requireCalendarSync', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByTriggerTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'triggerTime', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      sortByTriggerTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'triggerTime', Sort.desc);
    });
  }
}

extension ReminderCollectionQuerySortThenBy
    on QueryBuilder<ReminderCollection, ReminderCollection, QSortThenBy> {
  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByCalendarEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarEventId', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByCalendarEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarEventId', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByCustomRingtonePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customRingtonePath', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByCustomRingtonePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customRingtonePath', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsAlarm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlarm', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsAlarmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlarm', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByRequireCalendarSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requireCalendarSync', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByRequireCalendarSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requireCalendarSync', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByTriggerTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'triggerTime', Sort.asc);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QAfterSortBy>
      thenByTriggerTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'triggerTime', Sort.desc);
    });
  }
}

extension ReminderCollectionQueryWhereDistinct
    on QueryBuilder<ReminderCollection, ReminderCollection, QDistinct> {
  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByCalendarEventId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calendarEventId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByCustomRingtonePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customRingtonePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByIsAlarm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAlarm');
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRecurring');
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByRequireCalendarSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'requireCalendarSync');
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderCollection, ReminderCollection, QDistinct>
      distinctByTriggerTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'triggerTime');
    });
  }
}

extension ReminderCollectionQueryProperty
    on QueryBuilder<ReminderCollection, ReminderCollection, QQueryProperty> {
  QueryBuilder<ReminderCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReminderCollection, String?, QQueryOperations>
      calendarEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calendarEventId');
    });
  }

  QueryBuilder<ReminderCollection, String?, QQueryOperations>
      customRingtonePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customRingtonePath');
    });
  }

  QueryBuilder<ReminderCollection, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ReminderCollection, bool, QQueryOperations> isAlarmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAlarm');
    });
  }

  QueryBuilder<ReminderCollection, bool, QQueryOperations>
      isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<ReminderCollection, bool, QQueryOperations>
      isRecurringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRecurring');
    });
  }

  QueryBuilder<ReminderCollection, bool, QQueryOperations>
      requireCalendarSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'requireCalendarSync');
    });
  }

  QueryBuilder<ReminderCollection, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<ReminderCollection, DateTime, QQueryOperations>
      triggerTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'triggerTime');
    });
  }
}
