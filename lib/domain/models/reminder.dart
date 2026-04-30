import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/reminder_collection.dart';

part 'reminder.freezed.dart';

@freezed
class Reminder with _$Reminder {
  const Reminder._();

  const factory Reminder({
    required int id,
    required String title,
    String? description,
    required DateTime triggerTime,
    @Default(false) bool isRecurring,
    @Default(true) bool isAlarm,
    @Default(false) bool isCompleted,
    @Default(true) bool requireCalendarSync,
    String? calendarEventId,
    String? customRingtonePath,
  }) = _Reminder;

  factory Reminder.fromCollection(ReminderCollection collection) {
    return Reminder(
      id: collection.id,
      title: collection.title,
      description: collection.description,
      triggerTime: collection.triggerTime,
      isRecurring: collection.isRecurring,
      isAlarm: collection.isAlarm,
      isCompleted: collection.isCompleted,
      requireCalendarSync: collection.requireCalendarSync,
      calendarEventId: collection.calendarEventId,
      customRingtonePath: collection.customRingtonePath,
    );
  }
}

extension ReminderToCollection on Reminder {
  ReminderCollection toCollection() {
    return ReminderCollection()
      ..id = id
      ..title = title
      ..description = description
      ..triggerTime = triggerTime
      ..isRecurring = isRecurring
      ..isAlarm = isAlarm
      ..isCompleted = isCompleted
      ..requireCalendarSync = requireCalendarSync
      ..calendarEventId = calendarEventId
      ..customRingtonePath = customRingtonePath;
  }
}
