import 'package:alarm/alarm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_service.g.dart';

@riverpod
AlarmService alarmService(AlarmServiceRef ref) {
  return AlarmService();
}

class AlarmService {
  Future<void> init() async {
    await Alarm.init();
  }

  Future<void> setAlarm({
    required int id,
    required DateTime dateTime,
    required String title,
    required String body,
  }) async {
    final alarmSettings = AlarmSettings(
      id: id,
      dateTime: dateTime,
      assetAudioPath: 'assets/alarm.mp3', // Need to add an asset
      loopAudio: true,
      vibrate: true,
      volumeSettings: VolumeSettings.fade(
        volume: 0.8,
        fadeDuration: const Duration(seconds: 3),
        volumeEnforced: true,
      ),
      notificationSettings: NotificationSettings(
        title: title,
        body: body,
        stopButton: 'Stop',
      ),
    );
    await Alarm.set(alarmSettings: alarmSettings);
  }

  Future<void> stopAlarm(int id) async {
    await Alarm.stop(id);
  }
}
