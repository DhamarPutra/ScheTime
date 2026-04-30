import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    String? description,
    required DateTime dueDate,
    @Default(false) bool isCompleted,
    @Default(1) int priority, // 0: low, 1: medium, 2: high
    @Default(false) bool reminderEnabled,
    @Default(false) bool alarmEnabled,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
