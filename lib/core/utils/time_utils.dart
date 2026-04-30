import 'package:timezone/timezone.dart' as tz;

class TimeUtils {
  /// Always returns the current time in UTC+7 (Asia/Jakarta)
  static tz.TZDateTime get now {
    final location = tz.getLocation('Asia/Jakarta');
    return tz.TZDateTime.now(location);
  }

  /// Converts a standard DateTime to UTC+7 TZDateTime
  static tz.TZDateTime toJakartaTime(DateTime dateTime) {
    final location = tz.getLocation('Asia/Jakarta');
    return tz.TZDateTime.from(dateTime, location);
  }
}
