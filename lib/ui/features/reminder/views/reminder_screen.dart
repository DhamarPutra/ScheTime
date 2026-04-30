import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../domain/providers/reminder_provider.dart';
import 'create_reminder_dialog.dart';
import 'package:intl/intl.dart';

class ReminderScreen extends ConsumerWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remindersAsync = ref.watch(reminderNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders (UTC+7)'),
      ),
      body: remindersAsync.when(
        data: (reminders) {
          if (reminders.isEmpty) {
            return const Center(child: Text('No reminders yet.'));
          }
          return ListView.builder(
            itemCount: reminders.length,
            itemBuilder: (context, index) {
              final reminder = reminders[index];
              return ListTile(
                title: Text(reminder.title),
                subtitle: Text(DateFormat('yyyy-MM-dd HH:mm').format(reminder.triggerTime)),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    ref.read(reminderNotifierProvider.notifier).deleteReminder(reminder.id);
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const CreateReminderDialog(),
          );
        },
        child: const Icon(Icons.add_alarm),
      ),
    );
  }
}
