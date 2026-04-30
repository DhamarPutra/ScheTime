# 📅 ScheTime

**ScheTime** is a modern, high-performance Todo and Reminder application built with Flutter. It helps you manage your daily tasks and never miss a beat with its advanced reminder system and seamless device calendar integration.

---

## ✨ Features

- **✅ Smart Todo List**: Organize your tasks with ease.
- **🔔 Advanced Reminders**: Separate reminder system from tasks for better organization.
- **⏰ Full-Screen Alarms**: Never miss an important event with loud, full-screen alarm overlays.
- **🎵 Custom Ringtones**: Pick your favorite MP3 or WAV file as your alarm sound.
- **🗓️ Calendar Sync**: Automatically synchronize your reminders with your device's native calendar (Google Calendar, iCloud, etc.).
- **🌏 Timezone Aware**: Fully optimized for **Asia/Jakarta (UTC+7)**, ensuring your alarms ring at the right time regardless of system settings.
- **📦 Material 3 Design**: Clean, beautiful, and intuitive user interface.

---

## 🚀 Tech Stack

- **Framework**: [Flutter](https://flutter.dev) (v3.41+)
- **State Management**: [Riverpod](https://riverpod.dev)
- **Local Database**: [Isar](https://isar.dev) (NoSQL, lightning fast)
- **Notifications**: [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications)
- **Alarm Management**: [alarm](https://pub.dev/packages/alarm)
- **Calendar API**: [device_calendar](https://pub.dev/packages/device_calendar)

---

## 🛠️ Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/ScheTime.git
   cd ScheTime
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run Code Generation**:
   (Required for Isar and Freezed models)
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

---

## 📱 Permissions Required

To function properly, ScheTime requires the following permissions on Android:
- **Calendar**: To sync reminders to your device calendar.
- **Notifications**: To show reminder alerts.
- **Exact Alarm**: To trigger alarms precisely on time (Android 12+).
- **System Alert Window**: For full-screen alarm overlays.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
