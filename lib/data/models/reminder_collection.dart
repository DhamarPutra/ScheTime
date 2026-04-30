import 'package:isar/isar.dart';

part 'reminder_collection.g.dart';

@collection
class ReminderCollection {
  Id id = Isar.autoIncrement;

  late String title;
  
  String? description;

  @Index()
  late DateTime triggerTime; // Will be stored as UTC equivalent of the Asia/Jakarta time

  bool isRecurring = false;
  
  bool isAlarm = true; // True for full-screen alarm, false for simple notification
  
  bool isCompleted = false;

  bool requireCalendarSync = true;
  
  String? calendarEventId;
  
  String? customRingtonePath;
}
