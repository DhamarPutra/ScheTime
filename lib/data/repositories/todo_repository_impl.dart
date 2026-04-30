import '../../domain/models/todo.dart';
import '../../domain/repositories/todo_repository.dart';
import '../models/todo_collection.dart';
import '../services/isar_service.dart';

class TodoRepositoryImpl implements TodoRepository {
  final IsarService _isarService;

  TodoRepositoryImpl(this._isarService);

  @override
  Future<List<Todo>> getTodos() async {
    final collections = await _isarService.getAllTodos();
    return collections.map((c) => _mapToDomain(c)).toList();
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    // Check if exists
    final existing = await _isarService.getTodoByRemoteId(todo.id);
    
    final collection = TodoCollection()
      ..id = existing?.id ?? 0 // 0 means autoIncrement if it doesn't exist
      ..remoteId = todo.id
      ..title = todo.title
      ..description = todo.description
      ..dueDate = todo.dueDate
      ..isCompleted = todo.isCompleted
      ..priority = todo.priority
      ..reminderEnabled = todo.reminderEnabled
      ..alarmEnabled = todo.alarmEnabled;

    await _isarService.saveTodo(collection);
  }

  @override
  Future<void> deleteTodo(String id) async {
    await _isarService.deleteTodoByRemoteId(id);
  }

  @override
  Future<Todo?> getTodoById(String id) async {
    final collection = await _isarService.getTodoByRemoteId(id);
    if (collection == null) return null;
    return _mapToDomain(collection);
  }

  Todo _mapToDomain(TodoCollection collection) {
    return Todo(
      id: collection.remoteId,
      title: collection.title,
      description: collection.description,
      dueDate: collection.dueDate,
      isCompleted: collection.isCompleted,
      priority: collection.priority,
      reminderEnabled: collection.reminderEnabled,
      alarmEnabled: collection.alarmEnabled,
    );
  }
}
