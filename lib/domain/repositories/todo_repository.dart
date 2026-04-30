import '../models/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<void> saveTodo(Todo todo);
  Future<void> deleteTodo(String id);
  Future<Todo?> getTodoById(String id);
}
