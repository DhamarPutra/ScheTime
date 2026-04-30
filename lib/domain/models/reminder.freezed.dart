// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Reminder {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get triggerTime => throw _privateConstructorUsedError;
  bool get isRecurring => throw _privateConstructorUsedError;
  bool get isAlarm => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get requireCalendarSync => throw _privateConstructorUsedError;
  String? get calendarEventId => throw _privateConstructorUsedError;
  String? get customRingtonePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReminderCopyWith<Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res, Reminder>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime triggerTime,
      bool isRecurring,
      bool isAlarm,
      bool isCompleted,
      bool requireCalendarSync,
      String? calendarEventId,
      String? customRingtonePath});
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res, $Val extends Reminder>
    implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? triggerTime = null,
    Object? isRecurring = null,
    Object? isAlarm = null,
    Object? isCompleted = null,
    Object? requireCalendarSync = null,
    Object? calendarEventId = freezed,
    Object? customRingtonePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerTime: null == triggerTime
          ? _value.triggerTime
          : triggerTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlarm: null == isAlarm
          ? _value.isAlarm
          : isAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      requireCalendarSync: null == requireCalendarSync
          ? _value.requireCalendarSync
          : requireCalendarSync // ignore: cast_nullable_to_non_nullable
              as bool,
      calendarEventId: freezed == calendarEventId
          ? _value.calendarEventId
          : calendarEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      customRingtonePath: freezed == customRingtonePath
          ? _value.customRingtonePath
          : customRingtonePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderImplCopyWith<$Res>
    implements $ReminderCopyWith<$Res> {
  factory _$$ReminderImplCopyWith(
          _$ReminderImpl value, $Res Function(_$ReminderImpl) then) =
      __$$ReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime triggerTime,
      bool isRecurring,
      bool isAlarm,
      bool isCompleted,
      bool requireCalendarSync,
      String? calendarEventId,
      String? customRingtonePath});
}

/// @nodoc
class __$$ReminderImplCopyWithImpl<$Res>
    extends _$ReminderCopyWithImpl<$Res, _$ReminderImpl>
    implements _$$ReminderImplCopyWith<$Res> {
  __$$ReminderImplCopyWithImpl(
      _$ReminderImpl _value, $Res Function(_$ReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? triggerTime = null,
    Object? isRecurring = null,
    Object? isAlarm = null,
    Object? isCompleted = null,
    Object? requireCalendarSync = null,
    Object? calendarEventId = freezed,
    Object? customRingtonePath = freezed,
  }) {
    return _then(_$ReminderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerTime: null == triggerTime
          ? _value.triggerTime
          : triggerTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlarm: null == isAlarm
          ? _value.isAlarm
          : isAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      requireCalendarSync: null == requireCalendarSync
          ? _value.requireCalendarSync
          : requireCalendarSync // ignore: cast_nullable_to_non_nullable
              as bool,
      calendarEventId: freezed == calendarEventId
          ? _value.calendarEventId
          : calendarEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      customRingtonePath: freezed == customRingtonePath
          ? _value.customRingtonePath
          : customRingtonePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReminderImpl extends _Reminder {
  const _$ReminderImpl(
      {required this.id,
      required this.title,
      this.description,
      required this.triggerTime,
      this.isRecurring = false,
      this.isAlarm = true,
      this.isCompleted = false,
      this.requireCalendarSync = true,
      this.calendarEventId,
      this.customRingtonePath})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime triggerTime;
  @override
  @JsonKey()
  final bool isRecurring;
  @override
  @JsonKey()
  final bool isAlarm;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool requireCalendarSync;
  @override
  final String? calendarEventId;
  @override
  final String? customRingtonePath;

  @override
  String toString() {
    return 'Reminder(id: $id, title: $title, description: $description, triggerTime: $triggerTime, isRecurring: $isRecurring, isAlarm: $isAlarm, isCompleted: $isCompleted, requireCalendarSync: $requireCalendarSync, calendarEventId: $calendarEventId, customRingtonePath: $customRingtonePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.triggerTime, triggerTime) ||
                other.triggerTime == triggerTime) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.isAlarm, isAlarm) || other.isAlarm == isAlarm) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.requireCalendarSync, requireCalendarSync) ||
                other.requireCalendarSync == requireCalendarSync) &&
            (identical(other.calendarEventId, calendarEventId) ||
                other.calendarEventId == calendarEventId) &&
            (identical(other.customRingtonePath, customRingtonePath) ||
                other.customRingtonePath == customRingtonePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      triggerTime,
      isRecurring,
      isAlarm,
      isCompleted,
      requireCalendarSync,
      calendarEventId,
      customRingtonePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      __$$ReminderImplCopyWithImpl<_$ReminderImpl>(this, _$identity);
}

abstract class _Reminder extends Reminder {
  const factory _Reminder(
      {required final int id,
      required final String title,
      final String? description,
      required final DateTime triggerTime,
      final bool isRecurring,
      final bool isAlarm,
      final bool isCompleted,
      final bool requireCalendarSync,
      final String? calendarEventId,
      final String? customRingtonePath}) = _$ReminderImpl;
  const _Reminder._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get triggerTime;
  @override
  bool get isRecurring;
  @override
  bool get isAlarm;
  @override
  bool get isCompleted;
  @override
  bool get requireCalendarSync;
  @override
  String? get calendarEventId;
  @override
  String? get customRingtonePath;
  @override
  @JsonKey(ignore: true)
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
