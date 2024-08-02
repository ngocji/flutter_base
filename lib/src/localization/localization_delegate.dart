import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

import '../generated/l10n.dart' as app;

class LocalizationDelegate {
  static const List<LocalizationsDelegate> delegates = [
    CommonLocalization.delegate,
    app.Localization.delegate
  ];

  static List<Locale> supportedLocales =
      const app.AppLocalizationDelegate().supportedLocales;
}
