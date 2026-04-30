import 'package:isar/isar.dart';

part 'todo_collection.g.dart';

@collection
class TodoCollection {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String remoteId;

  late String title;
  
  String? description;

  @Index()
  late DateTime dueDate;

  bool isCompleted = false;

  int priority = 1;

  bool reminderEnabled = false;

  bool alarmEnabled = false;
}
