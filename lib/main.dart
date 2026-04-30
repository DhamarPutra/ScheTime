import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'data/services/isar_service.dart';
import 'data/services/notification_service.dart';
import 'data/services/alarm_service.dart';
import 'ui/core/app_theme.dart';
import 'ui/features/home/views/main_layout.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize timezone globally to Asia/Jakarta (UTC+7)
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Asia/Jakarta'));

  // Initialize services
  final isarService = IsarService();
  await isarService.init();

  final notificationService = NotificationService();
  await notificationService.init();

  final alarmService = AlarmService();
  await alarmService.init();

  runApp(
    ProviderScope(
      overrides: [
        isarServiceProvider.overrideWithValue(isarService),
        notificationServiceProvider.overrideWithValue(notificationService),
        alarmServiceProvider.overrideWithValue(alarmService),
      ],
      child: const ScheTimeApp(),
    ),
  );
}

class ScheTimeApp extends StatelessWidget {
  const ScheTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScheTime',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainLayout(),
    );
  }
}
