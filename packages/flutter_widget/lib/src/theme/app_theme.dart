import 'package:flutter_widget/flutter_widget.dart';
import 'package:flutter_widget/src/theme/guideline_color.dart';
import 'package:flutter_widget/src/theme/guideline_typography.dart';

const _font = 'Roboto';

class AppTheme {
  final ThemeData data;

  const AppTheme({
    required this.data,
  });

  factory AppTheme.light() {
    var colorSchema = const ColorScheme(
      primary: Color(0xFF65558F),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFBBDEFB),
      onPrimaryContainer: Color(0xFF21005D),
      secondary: Color(0xFF625B71),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFE8DEF8),
      onSecondaryContainer: Color(0xFF1D192B),
      tertiary: Color(0xFF7D5260),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFD8E4),
      onTertiaryContainer: Color(0xFF31111D),
      error: Color(0xFFB3261E),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFF9DEDC),
      onErrorContainer: Color(0xFF410E0B),
      surface: Color(0xFFFEF7FF),
      onSurface: Color(0xFF1D1B20),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF7F2FA),
      surfaceContainer: Color(0xFFF3EDF7),
      surfaceContainerHigh: Color(0xFFECE6F0),
      surfaceContainerHighest: Color(0xFFE6E0E9),
      onSurfaceVariant: Color(0xFF49454F),
      outline: Color(0xFF79747E),
      outlineVariant: Color(0xFFCAC4D0),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF322F35),
      onInverseSurface: Color(0xFFF5EFF7),
      inversePrimary: Color(0xFFD0BCFF),
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
        textTheme: _createDefaultTextTheme(colorSchema),
        extensions: [
          const AppTypography(),
          GuidelineColor(toolbarGradient: SupportColors.supportGradientBlue),
          const GuidelineTypography(),
        ],
      ),
    );
  }

  factory AppTheme.dark() {
    var colorSchema = const ColorScheme(
      primary: Color(0xFFD0BCFE),
      onPrimary: Color(0xFF381E72),
      primaryContainer: Color(0xFF4F378B),
      onPrimaryContainer: Color(0xFFEADDFF),
      secondary: Color(0xFFCCC2DC),
      onSecondary: Color(0xFF332D41),
      secondaryContainer: Color(0xFF4A4458),
      onSecondaryContainer: Color(0xFFE8DEF8),
      tertiary: Color(0xFFEFB8C8),
      onTertiary: Color(0xFF492532),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFFFD8E4),
      error: Color(0xFFF2B8B5),
      onError: Color(0xFF601410),
      errorContainer: Color(0xFF8C1D18),
      onErrorContainer: Color(0xFF8C1D18),
      surface: Color(0xFF141218),
      onSurface: Color(0xFFE6E0E9),
      surfaceContainerLowest: Color(0xFF0F0D13),
      surfaceContainerLow: Color(0xFF1D1B20),
      surfaceContainer: Color(0xFF211F26),
      surfaceContainerHigh: Color(0xFF2B2930),
      surfaceContainerHighest: Color(0xFF36343B),
      onSurfaceVariant: Color(0xFFCAC4D0),
      outline: Color(0xFF938F99),
      outlineVariant: Color(0xFF49454F),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE6E0E9),
      onInverseSurface: Color(0xFF322F35),
      inversePrimary: Color(0xFF6750A4),
      brightness: Brightness.dark,
    );
    return AppTheme(
      data: ThemeData(
        fontFamily: _font,
        brightness: Brightness.dark,
        colorScheme: colorSchema,
        textTheme: _createDefaultTextTheme(colorSchema),
        extensions: [
          const AppTypography(),
          GuidelineColor(toolbarGradient: SupportColors.supportGradientBlack),
          const GuidelineTypography(),
        ],
      ),
    );
  }

  static TextTheme _createDefaultTextTheme(ColorScheme colorSchema) {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      displayMedium: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      displaySmall: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      titleLarge: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.25,
      ),
      titleMedium: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.15,
      ),
      titleSmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.25,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.25,
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
      ),
      labelMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
      ),
      labelSmall: TextStyle(
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
      ),
    );
  }
}

extension ThemeContext on BuildContext {
  ColorScheme get color => Theme.of(this).colorScheme;

  GuidelineColor get colorExtend => Theme.of(this).extension<GuidelineColor>()!;

  GuidelineTypography get textStyle =>
      Theme.of(this).extension<GuidelineTypography>()!;

  TextTheme get textTheme => Theme.of(this).textTheme;
}
