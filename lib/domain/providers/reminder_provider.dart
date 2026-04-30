import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/services/reminder_service.dart';
import '../models/reminder.dart';

part 'reminder_provider.g.dart';

@riverpod
class ReminderNotifier extends _$ReminderNotifier {
  @override
  FutureOr<List<Reminder>> build() async {
    return _fetchReminders();
  }

  Future<List<Reminder>> _fetchReminders() async {
    final service = ref.read(reminderServiceProvider);
    final collections = await service.getAllReminders();
    return collections.map((c) => Reminder.fromCollection(c)).toList();
  }

  Future<void> addReminder(Reminder reminder) async {
    final service = ref.read(reminderServiceProvider);
    await service.saveReminder(reminder.toCollection());
    state = AsyncData(await _fetchReminders());
  }

  Future<void> updateReminder(Reminder reminder) async {
    final service = ref.read(reminderServiceProvider);
    await service.saveReminder(reminder.toCollection());
    state = AsyncData(await _fetchReminders());
  }

  Future<void> deleteReminder(int id) async {
    final service = ref.read(reminderServiceProvider);
    await service.deleteReminder(id);
    state = AsyncData(await _fetchReminders());
  }
}
