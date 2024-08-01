import 'package:flutter_widget/flutter_widget.dart';
import 'package:flutter_widget/src/theme/guideline_color.dart';
import 'package:flutter_widget/src/theme/guideline_colors.dart';
import 'package:flutter_widget/src/theme/guideline_typography.dart';

import 'guideline_text_style.dart';

const _font = 'OpenSans';

class AppTheme {
  final ThemeData data;

  const AppTheme({
    required this.data,
  });

  factory AppTheme.light() {
    var colorSchema = const ColorScheme(
      primary: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFBBDEFB),
      onPrimaryContainer: Color(0xFF0D47A1),
      secondary: Color(0xFF64B5F6),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFB3E5FC),
      onSecondaryContainer: Color(0xFF01579B),
      tertiary: Color(0xFF4DB6AC),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFB2DFDB),
      onTertiaryContainer: Color(0xFF004D40),
      error: Color(0xFFD32F2F),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF9A9A),
      onErrorContainer: Color(0xFFB71C1C),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF212121),
      surfaceContainerLowest: Color(0xFFBDBDBD),
      surfaceContainerLow: Color(0xFF9E9E9E),
      surfaceContainer: Color(0xFF757575),
      surfaceContainerHigh: Color(0xFF616161),
      surfaceContainerHighest: Color(0xFF424242),
      onSurfaceVariant: Color(0xFF757575),
      outline: Color(0xFFBDBDBD),
      outlineVariant: Color(0xFF9E9E9E),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF303030),
      onInverseSurface: Color(0xFFFAFAFA),
      inversePrimary: Color(0xFF90CAF9),
      brightness: Brightness.light,
    );
    return AppTheme(
      data: ThemeData(
        fontFamily: _font,
        brightness: Brightness.light,
        colorScheme: colorSchema,
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 100, color: colorSchema.primary),
            titleLarge: TextStyle(fontSize: 30, color: colorSchema.primary),
            titleMedium:
                TextStyle(fontSize: 20, color: colorSchema.onSecondary),
            titleSmall: TextStyle(fontSize: 16, color: colorSchema.onTertiary),
            bodyMedium: TextStyle(fontSize: 14, color: colorSchema.onSurface),
            bodySmall:
                TextStyle(fontSize: 12, color: colorSchema.onSurfaceVariant)),
        extensions: const [
          AppTypography(),
          GuidelineColor(),
          GuidelineTypography(
            displayMdRegular: GuidelineTextStyle.displayMdRegular,
            displayMdMedium: GuidelineTextStyle.displayMdMedium,
            displayMdSemiBold: GuidelineTextStyle.displayMdSemiBold,
            displayMdBold: GuidelineTextStyle.displayMdBold,
            displaySmRegular: GuidelineTextStyle.displaySmRegular,
            displaySmMedium: GuidelineTextStyle.displaySmMedium,
            displaySmSemiBold: GuidelineTextStyle.displaySmSemiBold,
            displaySmBold: GuidelineTextStyle.displaySmBold,
            displayXsRegular: GuidelineTextStyle.displayXsRegular,
            displayXsMedium: GuidelineTextStyle.displayXsMedium,
            displayXsSemiBold: GuidelineTextStyle.displayXsSemiBold,
            displayXsBold: GuidelineTextStyle.displayXsBold,
            textXlRegular: GuidelineTextStyle.textXlRegular,
            textXlMedium: GuidelineTextStyle.textXlMedium,
            textXlSemiBold: GuidelineTextStyle.textXlSemiBold,
            textXlBold: GuidelineTextStyle.textXlBold,
            textLgRegular: GuidelineTextStyle.textLgRegular,
            textLgMedium: GuidelineTextStyle.textLgMedium,
            textLgSemiBold: GuidelineTextStyle.textLgSemiBold,
            textLgBold: GuidelineTextStyle.textLgBold,
            textMdRegular: GuidelineTextStyle.textMdRegular,
            textMdMedium: GuidelineTextStyle.textMdMedium,
            textMdSemiBold: GuidelineTextStyle.textMdSemiBold,
            textMdBold: GuidelineTextStyle.textMdBold,
            textSmallRegular: GuidelineTextStyle.textSmallRegular,
            textSmallMedium: GuidelineTextStyle.textSmallMedium,
            textSmallSemiBold: GuidelineTextStyle.textSmallSemiBold,
            textSmallBold: GuidelineTextStyle.textSmallBold,
            textXsRegular: GuidelineTextStyle.textXsRegular,
            textXsMedium: GuidelineTextStyle.textXsMedium,
            textXsSemiBold: GuidelineTextStyle.textXsSemiBold,
            textXsBold: GuidelineTextStyle.textXsBold,
          ),
        ],
      ),
    );
  }

  factory AppTheme.dark() {
    var colorSchema = const ColorScheme(
      primary: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF90CAF9),
      onPrimaryContainer: Color(0xFF0D47A1),
      secondary: Color(0xFF64B5F6),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFBBDEFB),
      onSecondaryContainer: Color(0xFF01579B),
      tertiary: Color(0xFF4DB6AC),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF80CBC4),
      onTertiaryContainer: Color(0xFF004D40),
      error: Color(0xFFD32F2F),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF9A9A),
      onErrorContainer: Color(0xFFB71C1C),
      surface: Color(0xFF121212),
      onSurface: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFF9E9E9E),
      surfaceContainerLow: Color(0xFF757575),
      surfaceContainer: Color(0xFF616161),
      surfaceContainerHigh: Color(0xFF424242),
      surfaceContainerHighest: Color(0xFF303030),
      onSurfaceVariant: Color(0xFFD4D4D4),
      outline: Color(0xFFBDBDBD),
      outlineVariant: Color(0xFF9E9E9E),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFFAFAFA),
      onInverseSurface: Color(0xFF303030),
      inversePrimary: Color(0xFFBBDEFB),
      brightness: Brightness.dark,
    );
    return AppTheme(
      data: ThemeData(
        fontFamily: _font,
        brightness: Brightness.dark,
        colorScheme: colorSchema,
        textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 100, color: colorSchema.primary),
            titleLarge: TextStyle(fontSize: 30, color: colorSchema.primary),
            titleMedium:
            TextStyle(fontSize: 20, color: colorSchema.onSecondary),
            titleSmall: TextStyle(fontSize: 16, color: colorSchema.onTertiary),
            bodyMedium: TextStyle(fontSize: 14, color: colorSchema.onSurface),
            bodySmall:
            TextStyle(fontSize: 12, color: colorSchema.onSurfaceVariant)),
        extensions: const [
          AppTypography(),
          GuidelineColor(),
          GuidelineTypography(
            displayMdRegular: GuidelineTextStyle.displayMdRegular,
            displayMdMedium: GuidelineTextStyle.displayMdMedium,
            displayMdSemiBold: GuidelineTextStyle.displayMdSemiBold,
            displayMdBold: GuidelineTextStyle.displayMdBold,
            displaySmRegular: GuidelineTextStyle.displaySmRegular,
            displaySmMedium: GuidelineTextStyle.displaySmMedium,
            displaySmSemiBold: GuidelineTextStyle.displaySmSemiBold,
            displaySmBold: GuidelineTextStyle.displaySmBold,
            displayXsRegular: GuidelineTextStyle.displayXsRegular,
            displayXsMedium: GuidelineTextStyle.displayXsMedium,
            displayXsSemiBold: GuidelineTextStyle.displayXsSemiBold,
            displayXsBold: GuidelineTextStyle.displayXsBold,
            textXlRegular: GuidelineTextStyle.textXlRegular,
            textXlMedium: GuidelineTextStyle.textXlMedium,
            textXlSemiBold: GuidelineTextStyle.textXlSemiBold,
            textXlBold: GuidelineTextStyle.textXlBold,
            textLgRegular: GuidelineTextStyle.textLgRegular,
            textLgMedium: GuidelineTextStyle.textLgMedium,
            textLgSemiBold: GuidelineTextStyle.textLgSemiBold,
            textLgBold: GuidelineTextStyle.textLgBold,
            textMdRegular: GuidelineTextStyle.textMdRegular,
            textMdMedium: GuidelineTextStyle.textMdMedium,
            textMdSemiBold: GuidelineTextStyle.textMdSemiBold,
            textMdBold: GuidelineTextStyle.textMdBold,
            textSmallRegular: GuidelineTextStyle.textSmallRegular,
            textSmallMedium: GuidelineTextStyle.textSmallMedium,
            textSmallSemiBold: GuidelineTextStyle.textSmallSemiBold,
            textSmallBold: GuidelineTextStyle.textSmallBold,
            textXsRegular: GuidelineTextStyle.textXsRegular,
            textXsMedium: GuidelineTextStyle.textXsMedium,
            textXsSemiBold: GuidelineTextStyle.textXsSemiBold,
            textXsBold: GuidelineTextStyle.textXsBold,
          ),
        ],
      ),
    );
  }
}

extension ThemeContext on BuildContext {
  ColorScheme get color => Theme.of(this).colorScheme;

  GuidelineColor get colorExtend =>
      Theme.of(this).extension<GuidelineColor>()!;

  GuidelineTypography get textStyle =>
      Theme.of(this).extension<GuidelineTypography>()!;

  TextTheme get textTheme =>
      Theme.of(this).textTheme;
}
