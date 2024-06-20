import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  static DateTime? tryParse(String format, String value) {
    try {
      return DateFormat(format).parse(value);
    } catch (_) {
      return null;
    }
  }
}
