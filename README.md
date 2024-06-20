### Project using Flutter version 3.16.3

### Scripts
- flutter pub get
- cd ios: pod install

### Generate file
- dart run build_runner build --delete-conflicting-outputs

### Release apk
- flutter build apk
- flutter build apk --split-per-abi
- flutter build appbundle

### Multiple language using flutter_intl, auto generate file
- Install: https://plugins.jetbrains.com/plugin/13666-flutter-intl (Android Studio)
- Install: https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl (VSCode)
- Using: Localization.current.lbl_login_option1
- Add new text in language: packages/flutter_common/lib/src/l10n/intl_en.arb
- flutter pub global run intl_utils:generate