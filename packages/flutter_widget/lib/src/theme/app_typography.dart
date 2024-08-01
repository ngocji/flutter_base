import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography();

  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography();
  }

  @override
  ThemeExtension<AppTypography> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}
