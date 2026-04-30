import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../providers/todo_list_provider.dart';
import '../../../core/app_theme.dart';
import '../../../../domain/models/todo.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsync = ref.watch(todoListProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _buildHeader(context),
            _buildTaskList(todosAsync, ref),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddTaskDialog(context, ref),
        backgroundColor: AppTheme.primaryColor,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('New Task', style: TextStyle(color: Colors.white)),
      ).animate().scale(delay: 500.ms),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Tasks',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Manage your schedule precisely',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            const GlassCard(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: AppTheme.accentColor),
                    SizedBox(width: 12),
                    Text(
                      'Today, April 30',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ).animate().fadeIn().slideX(),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskList(AsyncValue<List<Todo>> todosAsync, WidgetRef ref) {
    return todosAsync.when(
      data: (todos) {
        if (todos.isEmpty) {
          return SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.task_alt,
                    size: 80,
                    color: Colors.white.withOpacity(0.1),
                  ).animate(onPlay: (controller) => controller.repeat())
                   .shimmer(duration: 2000.ms, color: AppTheme.accentColor.withOpacity(0.2))
                   .shake(hz: 2, curve: Curves.easeInOut),
                  const SizedBox(height: 24),
                  Text(
                    'No tasks yet',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                      fontSize: 18,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return SliverPadding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 100),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final todo = todos[index];
                return _TodoTile(todo: todo, ref: ref)
                    .animate(delay: (index * 50).ms)
                    .fadeIn(duration: 400.ms)
                    .slideX(begin: 0.1, curve: Curves.easeOutCubic)
                    .scale(begin: const Offset(0.95, 0.95), curve: Curves.easeOutCubic);
              },
              childCount: todos.length,
            ),
          ),
        );
      },
      loading: () => SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
          ).animate().scale(duration: 500.ms),
        ),
      ),
      error: (e, st) => SliverFillRemaining(
        child: Center(child: Text('Error: $e')),
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context, WidgetRef ref) {
    // Basic implementation for now
    final titleController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardColor,
        title: const Text('Add Task'),
        content: TextField(
          controller: titleController,
          decoration: const InputDecoration(hintText: 'Task Title'),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isNotEmpty) {
                final todo = Todo(
                  id: DateTime.now().toIso8601String(),
                  title: titleController.text,
                  dueDate: DateTime.now().add(const Duration(hours: 1)),
                );
                ref.read(todoListProvider.notifier).addTodo(todo);
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

class _TodoTile extends StatelessWidget {
  final Todo todo;
  final WidgetRef ref;

  const _TodoTile({required this.todo, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GlassCard(
        child: ListTile(
          onTap: () => ref.read(todoListProvider.notifier).toggleTodo(todo.id),
          leading: Checkbox(
            value: todo.isCompleted,
            onChanged: (_) => ref.read(todoListProvider.notifier).toggleTodo(todo.id),
            activeColor: AppTheme.primaryColor,
          ),
          title: Text(
            todo.title,
            style: TextStyle(
              decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
              color: todo.isCompleted ? Colors.white.withOpacity(0.4) : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            'Due: ${todo.dueDate.hour}:${todo.dueDate.minute}',
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
            onPressed: () => ref.read(todoListProvider.notifier).deleteTodo(todo.id),
          ),
        ),
      ),
    );
  }
}
