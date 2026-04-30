import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/todo_repository_provider.dart';
import '../../../../domain/models/todo.dart';

part 'todo_list_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<Todo>> build() async {
    final repository = ref.watch(todoRepositoryProvider);
    return repository.getTodos();
  }

  Future<void> addTodo(Todo todo) async {
    final repository = ref.read(todoRepositoryProvider);
    
    // Optimistic update
    final previousState = state;
    state = AsyncData([...state.value ?? [], todo]);

    try {
      await repository.saveTodo(todo);
    } catch (e) {
      state = previousState; // Rollback
      rethrow;
    }
  }

  Future<void> toggleTodo(String id) async {
    final repository = ref.read(todoRepositoryProvider);
    final previousState = state;
    
    if (state.value == null) return;

    final newList = state.value!.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();

    state = AsyncData(newList);

    try {
      final todo = newList.firstWhere((t) => t.id == id);
      await repository.saveTodo(todo);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> deleteTodo(String id) async {
    final repository = ref.read(todoRepositoryProvider);
    final previousState = state;

    if (state.value == null) return;

    state = AsyncData(state.value!.where((t) => t.id != id).toList());

    try {
      await repository.deleteTodo(id);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }
}
