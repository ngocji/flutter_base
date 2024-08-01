import 'package:flutter_core/flutter_core.dart';

extension DateTimeCommonEx on DateTime {
  static const localDateTimeFormat = 'dd/MM/yyyy';

  String get serverDateTime {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String format(String pattern) {
    return DateFormat(pattern).format(this);
  }
}

extension DateTimeCommonStringEx on String {
  DateTime? toDateTime(String pattern) {
    return DateFormat(pattern).tryParse(this);
  }
}

extension DateTimeCommonLongEx on int {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this);
  }
}
