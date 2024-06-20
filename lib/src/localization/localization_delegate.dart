import 'package:flutter_widget/flutter_widget.dart';

import '../generated/l10n.dart';

class LocalizationDelegate {
  // todo check localizationDelegate
  static const List<LocalizationsDelegate> delegates = [
    // GlobalMaterialLocalizations.delegate,
    // GlobalWidgetsLocalizations.delegate,
    // GlobalCupertinoLocalizations.delegate,
    Localization.delegate
  ];
}
