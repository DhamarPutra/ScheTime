import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'isar_service.dart';
import '../models/reminder_collection.dart';

part 'reminder_service.g.dart';

@riverpod
ReminderService reminderService(ReminderServiceRef ref) {
  final isarService = ref.watch(isarServiceProvider);
  return ReminderService(isarService);
}

class ReminderService {
  final IsarService _isarService;

  ReminderService(this._isarService);

  Future<void> saveReminder(ReminderCollection reminder) async {
    final isar = _isarService.isar;
    await isar.writeTxn(() async {
      await isar.reminderCollections.put(reminder);
    });
  }

  Future<List<ReminderCollection>> getAllReminders() async {
    final isar = _isarService.isar;
    return await isar.reminderCollections.where().sortByTriggerTime().findAll();
  }

  Future<void> deleteReminder(int id) async {
    final isar = _isarService.isar;
    await isar.writeTxn(() async {
      await isar.reminderCollections.delete(id);
    });
  }
}
