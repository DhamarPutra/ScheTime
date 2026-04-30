import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/isar_service.dart';
import '../../domain/repositories/todo_repository.dart';
import 'todo_repository_impl.dart';

part 'todo_repository_provider.g.dart';

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  final isarService = ref.watch(isarServiceProvider);
  return TodoRepositoryImpl(isarService);
}
