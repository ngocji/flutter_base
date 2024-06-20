import 'package:flutter_core/flutter_core.dart';

extension DateTimeCommonEx on DateTime {
  static const localDateTimeFormat = 'dd/MM/yyyy';

  String get serverDateTime {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
