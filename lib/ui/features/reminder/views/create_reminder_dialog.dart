import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_calendar/device_calendar.dart' hide Reminder;
import 'package:schetime/core/utils/time_utils.dart';
import '../../../../domain/providers/reminder_provider.dart';
import '../../../../domain/models/reminder.dart';
import '../../../../data/services/alarm_service.dart';
import '../../../../data/services/notification_service.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:file_picker/file_picker.dart';

class CreateReminderDialog extends ConsumerStatefulWidget {
  const CreateReminderDialog({super.key});

  @override
  ConsumerState<CreateReminderDialog> createState() => _CreateReminderDialogState();
}

class _CreateReminderDialogState extends ConsumerState<CreateReminderDialog> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  bool _isAlarm = true;
  bool _syncCalendar = true;
  String? _customAudioPath;
  String? _customAudioName;

  final DeviceCalendarPlugin _deviceCalendarPlugin = DeviceCalendarPlugin();

  @override
  void initState() {
    super.initState();
    final nowJakarta = TimeUtils.now;
    _selectedDate = nowJakarta;
    _selectedTime = TimeOfDay.fromDateTime(nowJakarta);
  }

  Future<void> _pickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: TimeUtils.now,
      lastDate: DateTime(2100),
    );
    if (date != null) {
      setState(() => _selectedDate = date);
    }
  }

  Future<void> _pickTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (time != null) {
      setState(() => _selectedTime = time);
    }
  }

  Future<void> _pickAudio() async {
    final result = await FilePicker.pickFiles(
      type: FileType.audio,
      allowMultiple: false,
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _customAudioPath = result.files.single.path;
        _customAudioName = result.files.single.name;
      });
    }
  }

  Future<String?> _addToCalendar(String title, String desc, DateTime triggerTime) async {
    var permissionsGranted = await _deviceCalendarPlugin.hasPermissions();
    if (permissionsGranted.isSuccess && !(permissionsGranted.data ?? false)) {
      permissionsGranted = await _deviceCalendarPlugin.requestPermissions();
      if (!permissionsGranted.isSuccess || !(permissionsGranted.data ?? false)) {
        return null; // Permission denied
      }
    }

    final calendars = await _deviceCalendarPlugin.retrieveCalendars();
    if (calendars.isSuccess && (calendars.data?.isNotEmpty ?? false)) {
      final defaultCalendar = calendars.data!.firstWhere((c) => c.isDefault ?? false, orElse: () => calendars.data!.first);
      
      final event = Event(
        defaultCalendar.id,
        title: title,
        description: desc,
        start: tz.TZDateTime.from(triggerTime, TimeUtils.now.location),
        end: tz.TZDateTime.from(triggerTime.add(const Duration(minutes: 30)), TimeUtils.now.location),
      );

      final result = await _deviceCalendarPlugin.createOrUpdateEvent(event);
      return result?.data;
    }
    return null;
  }

  Future<void> _save() async {
    if (_titleController.text.isEmpty) return;

    final triggerTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedTime.hour,
      _selectedTime.minute,
    );

    // Enforce Asia/Jakarta
    final tzTriggerTime = TimeUtils.toJakartaTime(triggerTime);

    String? eventId;
    if (_syncCalendar) {
      eventId = await _addToCalendar(_titleController.text, _descController.text, tzTriggerTime);
    }

    final reminder = Reminder(
      id: DateTime.now().millisecondsSinceEpoch % 100000,
      title: _titleController.text,
      description: _descController.text,
      triggerTime: tzTriggerTime,
      isAlarm: _isAlarm,
      requireCalendarSync: _syncCalendar,
      calendarEventId: eventId,
      customRingtonePath: _customAudioPath,
    );

    await ref.read(reminderNotifierProvider.notifier).addReminder(reminder);

    if (_isAlarm) {
      final alarmService = ref.read(alarmServiceProvider);
      await alarmService.setAlarm(
        id: reminder.id,
        dateTime: reminder.triggerTime,
        title: reminder.title,
        body: reminder.description ?? '',
        audioPath: _customAudioPath,
      );
    } else {
      final notificationService = ref.read(notificationServiceProvider);
      await notificationService.scheduleNotification(
        id: reminder.id,
        title: reminder.title,
        body: reminder.description ?? '',
        scheduledDate: reminder.triggerTime,
      );
    }

    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New Reminder'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: _pickDate,
                    icon: const Icon(Icons.calendar_today),
                    label: Text(DateFormat('yyyy-MM-dd').format(_selectedDate)),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: _pickTime,
                    icon: const Icon(Icons.access_time),
                    label: Text(_selectedTime.format(context)),
                  ),
                ),
              ],
            ),
            SwitchListTile(
              title: const Text('Full-Screen Alarm'),
              value: _isAlarm,
              onChanged: (val) => setState(() => _isAlarm = val),
            ),
            SwitchListTile(
              title: const Text('Sync to Calendar'),
              value: _syncCalendar,
              onChanged: (val) => setState(() => _syncCalendar = val),
            ),
            if (_isAlarm) ...[
              const Divider(),
              ListTile(
                title: const Text('Ringtone'),
                subtitle: Text(_customAudioName ?? 'Default (Marimba)'),
                trailing: IconButton(
                  icon: Icon(_customAudioPath == null ? Icons.music_note : Icons.close),
                  onPressed: _customAudioPath == null ? _pickAudio : () {
                    setState(() {
                      _customAudioPath = null;
                      _customAudioName = null;
                    });
                  },
                ),
                onTap: _pickAudio,
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _save,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
