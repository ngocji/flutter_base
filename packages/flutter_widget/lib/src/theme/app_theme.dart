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
    return AppTheme(
      data: ThemeData(
        fontFamily: _font,
        brightness: Brightness.light,
        extensions: const [
          AppTypography(
            textTheme: TextTheme(
              displayLarge:
                  TextStyle(fontSize: 100, color: SupportColors.textLightGray),
              titleLarge:
                  TextStyle(fontSize: 30, color: SupportColors.textLightGray),
              titleMedium:
                  TextStyle(fontSize: 20, color: SupportColors.textLightGray),
              titleSmall:
                  TextStyle(fontSize: 16, color: SupportColors.textLightGray),
            ),
            tabTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textTinyRegularStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            textTinyMediumStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textTinySemiBoldStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            textTinyBoldStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            textSmallRegularStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            textSmallMediumStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            textSmallSemiBoldStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textSmallBoldStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            textNormalRegularStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textNormalMediumStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textNormalSemiBoldStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            textNormalBoldStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            textLargeRegularStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            textLargeMediumStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            textLargeSemiBoldStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textLargeBoldStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          GuidelineColor(
            colorSold: SupportColors.colorSold,
            colorAttendee: SupportColors.colorAttendee,
            colorScanned: SupportColors.colorScanned,
            colorError: SupportColors.colorError,
            colorText: SupportColors.colorText,
            colorText01: SupportColors.colorText01,
            blue: SupportColors.blue,
            black: SupportColors.black,
            black01: SupportColors.black01,
            white: SupportColors.white,
            green: SupportColors.green,
            red: SupportColors.red,
            colorIcon: SupportColors.colorIcon,
            primaryColor: SupportColors.primaryColor,
            backgroundField: SupportColors.backgroundField,
            colorTextField: SupportColors.colorTextField,
            colorAccent: SupportColors.colorAccent,
            headerColor: SupportColors.headerColor,
            background: SupportColors.background,
            backgroundCard: SupportColors.backgroundCard,
            blackGray: SupportColors.blackGray,
            lightGray: SupportColors.lightGray,
            borderGray: SupportColors.borderGray,
            orange: SupportColors.orange,
            darkBlue: SupportColors.darkBlue,
            secondaryColor: SupportColors.secondaryColor,
          ),
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
    return AppTheme(
      data: ThemeData(
        fontFamily: _font,
        brightness: Brightness.dark,
        extensions: const [
          AppTypography(
            textTheme: TextTheme(
              displayLarge:
                  TextStyle(fontSize: 100, color: SupportColors.textLightGray),
              titleLarge:
                  TextStyle(fontSize: 30, color: SupportColors.textLightGray),
              titleMedium:
                  TextStyle(fontSize: 20, color: SupportColors.textLightGray),
              titleSmall:
                  TextStyle(fontSize: 16, color: SupportColors.textLightGray),
            ),
            tabTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textTinyRegularStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            textTinyMediumStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textTinySemiBoldStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            textTinyBoldStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            textSmallRegularStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            textSmallMediumStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            textSmallSemiBoldStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textSmallBoldStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            textNormalRegularStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textNormalMediumStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textNormalSemiBoldStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            textNormalBoldStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            textLargeRegularStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            textLargeMediumStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            textLargeSemiBoldStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textLargeBoldStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          GuidelineColor(
            colorSold: SupportColors.colorSold,
            colorAttendee: SupportColors.colorAttendee,
            colorScanned: SupportColors.colorScanned,
            colorText: SupportColors.colorText,
            headerColor: SupportColors.headerColorDark,
            colorText01: SupportColors.colorText01,
            colorError: SupportColors.colorError,
            colorIcon: SupportColors.colorIcon,
            backgroundCard: SupportColors.backgroundCardDark,
            blue: SupportColors.blue,
            black: SupportColors.black,
            black01: SupportColors.black01,
            white: SupportColors.white,
            green: SupportColors.green,
            backgroundField: SupportColors.backgroundFieldDark,
            colorTextField: SupportColors.colorTextFieldDark,
            primaryColor: SupportColors.primaryColor,
            colorAccent: SupportColors.colorAccent,
            background: SupportColors.backgroundDark,
            blackGray: SupportColors.blackGray,
            lightGray: SupportColors.lightGray,
            borderGray: SupportColors.borderGray,
            orange: SupportColors.orange,
            red: SupportColors.red,
            darkBlue: SupportColors.darkBlue,
            secondaryColor: SupportColors.secondaryColor,
          ),
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
  GuidelineColor get color => Theme.of(this).extension<GuidelineColor>()!;

  GuidelineTypography get textStyle =>
      Theme.of(this).extension<GuidelineTypography>()!;

  @Deprecated('Remove, use textStyle instead')
  AppTypography get legacyTextStyle =>
      Theme.of(this).extension<AppTypography>()!;
}
