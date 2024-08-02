import 'package:flutter_widget/flutter_widget.dart';

class GuidelineColor extends ThemeExtension<GuidelineColor> {
  Gradient toolbarGradient;

  GuidelineColor({required this.toolbarGradient});

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
