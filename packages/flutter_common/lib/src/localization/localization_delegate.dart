import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_widget/flutter_widget.dart';

class LocalizationDelegate {
  static const List<LocalizationsDelegate> delegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    Localization.delegate
  ];
}
