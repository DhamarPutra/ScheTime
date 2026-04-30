import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/todo_collection.dart';
import '../models/reminder_collection.dart';

part 'isar_service.g.dart';

@riverpod
IsarService isarService(IsarServiceRef ref) {
  return IsarService();
}

class IsarService {
  late Isar _isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [TodoCollectionSchema, ReminderCollectionSchema],
      directory: dir.path,
    );
  }

  Isar get isar => _isar;

  // CRUD operations
  Future<void> saveTodo(TodoCollection todo) async {
    await _isar.writeTxn(() async {
      await _isar.todoCollections.put(todo);
    });
  }

  Future<List<TodoCollection>> getAllTodos() async {
    return await _isar.todoCollections.where().sortByDueDate().findAll();
  }

  Future<TodoCollection?> getTodoByRemoteId(String remoteId) async {
    return await _isar.todoCollections.filter().remoteIdEqualTo(remoteId).findFirst();
  }

  Future<void> deleteTodoByRemoteId(String remoteId) async {
    await _isar.writeTxn(() async {
      await _isar.todoCollections.filter().remoteIdEqualTo(remoteId).deleteAll();
    });
  }
}
