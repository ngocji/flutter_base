import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final TextTheme textTheme;

  final TextStyle? tabTextStyle;

  final TextStyle? textTinyRegularStyle;
  final TextStyle? textTinyMediumStyle;
  final TextStyle? textTinySemiBoldStyle;
  final TextStyle? textTinyBoldStyle;

  final TextStyle? textSmallRegularStyle;
  final TextStyle? textSmallMediumStyle;
  final TextStyle? textSmallSemiBoldStyle;
  final TextStyle? textSmallBoldStyle;

  final TextStyle? textNormalRegularStyle;
  final TextStyle? textNormalMediumStyle;
  final TextStyle? textNormalSemiBoldStyle;
  final TextStyle? textNormalBoldStyle;

  final TextStyle? textLargeRegularStyle;
  final TextStyle? textLargeMediumStyle;
  final TextStyle? textLargeSemiBoldStyle;
  final TextStyle? textLargeBoldStyle;

  const AppTypography({
    required this.textTheme,
    required this.tabTextStyle,
    required this.textTinyRegularStyle,
    required this.textTinyMediumStyle,
    required this.textTinySemiBoldStyle,
    required this.textTinyBoldStyle,
    required this.textSmallRegularStyle,
    required this.textSmallMediumStyle,
    required this.textSmallSemiBoldStyle,
    required this.textSmallBoldStyle,
    required this.textNormalRegularStyle,
    required this.textNormalMediumStyle,
    required this.textNormalSemiBoldStyle,
    required this.textNormalBoldStyle,
    required this.textLargeRegularStyle,
    required this.textLargeMediumStyle,
    required this.textLargeSemiBoldStyle,
    required this.textLargeBoldStyle,
  });

  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography(
      textTheme: TextTheme.lerp(textTheme, other.textTheme, t),
      tabTextStyle: TextStyle.lerp(tabTextStyle, other.tabTextStyle, t),
      textTinyRegularStyle: TextStyle.lerp(textTinyRegularStyle, other.textTinyRegularStyle, t),
      textTinyMediumStyle: TextStyle.lerp(textTinyMediumStyle, other.textTinyMediumStyle, t),
      textTinySemiBoldStyle: TextStyle.lerp(textTinySemiBoldStyle, other.textTinySemiBoldStyle, t),
      textTinyBoldStyle: TextStyle.lerp(textTinyBoldStyle, other.textTinyBoldStyle, t),
      textSmallRegularStyle: TextStyle.lerp(textSmallRegularStyle, other.textSmallRegularStyle, t),
      textSmallMediumStyle: TextStyle.lerp(textSmallMediumStyle, other.textSmallMediumStyle, t),
      textSmallSemiBoldStyle: TextStyle.lerp(textSmallSemiBoldStyle, other.textSmallSemiBoldStyle, t),
      textSmallBoldStyle: TextStyle.lerp(textSmallBoldStyle, other.textSmallBoldStyle, t),
      textNormalRegularStyle: TextStyle.lerp(textNormalRegularStyle, other.textNormalRegularStyle, t),
      textNormalMediumStyle: TextStyle.lerp(textNormalMediumStyle, other.textNormalMediumStyle, t),
      textNormalSemiBoldStyle: TextStyle.lerp(textNormalSemiBoldStyle, other.textNormalSemiBoldStyle, t),
      textNormalBoldStyle: TextStyle.lerp(textNormalBoldStyle, other.textNormalBoldStyle, t),
      textLargeRegularStyle: TextStyle.lerp(textLargeRegularStyle, other.textLargeRegularStyle, t),
      textLargeMediumStyle: TextStyle.lerp(textLargeMediumStyle, other.textLargeMediumStyle, t),
      textLargeSemiBoldStyle: TextStyle.lerp(textLargeSemiBoldStyle, other.textLargeSemiBoldStyle, t),
      textLargeBoldStyle: TextStyle.lerp(textLargeBoldStyle, other.textLargeBoldStyle, t),
    );
  }

  @override
  ThemeExtension<AppTypography> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}
