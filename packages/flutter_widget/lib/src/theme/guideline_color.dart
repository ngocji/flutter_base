import 'package:flutter_widget/flutter_widget.dart';

class GuidelineColor extends ThemeExtension<GuidelineColor> {
  final Color primaryColor;
  final Color background;
  final Color backgroundField;
  final Color backgroundCard;
  final Color colorTextField;
  final Color colorText;
  final Color colorText01;
  final Color colorIcon;
  final Color colorError;

  final Color black;
  final Color black01;
  final Color green;
  final Color red;
  final Color colorSold;
  final Color colorAttendee;
  final Color colorScanned;


  final Color colorAccent;
  final Color blackGray;
  final Color lightGray;
  final Color white;
  final Color borderGray;
  final Color orange;
  final Color blue;
  final Color darkBlue;
  final Color secondaryColor;
  final Color headerColor;

  const GuidelineColor({
    required this.headerColor,
    required this.colorSold,
    required this.colorAttendee,
    required this.colorScanned,
    required this.primaryColor,
    required this.colorError,
    required this.colorText,
    required this.colorText01,
    required this.backgroundField,
    required this.backgroundCard,
    required this.colorIcon,
    required this.blue,
    required this.black,
    required this.red,
    required this.black01,
    required this.colorTextField,
    required this.colorAccent,
    required this.white,
    required this.green,
    required this.background,
    required this.blackGray,
    required this.lightGray,
    required this.borderGray,
    required this.orange,
    required this.darkBlue,
    required this.secondaryColor,
  });

  @override
  ThemeExtension<GuidelineColor> lerp(
      covariant ThemeExtension<GuidelineColor>? other, double t) {
    return this;
  }

  @override
  ThemeExtension<GuidelineColor> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}
