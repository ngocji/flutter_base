import '../../flutter_widget.dart';

class BrandColors {
  BrandColors._();

  static const Color green = Color(0xff28AE60); //#1E552A
  static const Color gold = Color.fromRGBO(187, 138, 11, 1); //#BB8A0B
  static const Color red = Color(0xffEB1246); //#DA2128
}

class SupportColors {
  SupportColors._();
  static const Color colorSold = Color(0xff00D43D); //#6200EE
  static const Color colorAttendee = Color(0xff00C3FE); //#6200EE
  static const Color colorScanned = Color(0xffFF9D45); //#6200EE
  static const Color black = Color(0xff212121); //#6200EE
  static const Color backgroundCard = Color(0xffF3F4F8); //#6200EE
  static const Color backgroundCardDark = Color(0xff2C2C2C); //#6200EE
  static const Color black01 = Color.fromRGBO(0, 0, 0, 0.5); //#DA2128
  static const Color blue = Color(0xff137EFC); //#6200EE
  static const Color colorError = Color.fromRGBO(218, 33, 40, 1);
  static const Color colorIcon = Color(0xff959595); //#6200EE
  static const Color colorIconDark = Color(0xffffffff); //#6200EE
  static const Color backgroundField = Color(0xffF3F4F8); //#6200EE
  static const Color backgroundFieldDark = Color(0xff000000); //#6200EE
  static const Color colorText = Color(0xffCACACA); //#6200EE
  static const Color colorText01 = Color(0xff959595); //#6200EE
  static const Color colorText01Dark = Color(0xffffffff); //#6200EE
  static const Color colorTextField = Color(0xff000000); //#6200EE
  static const Color colorTextFieldDark = Color(0xffffffff); //#6200EE
  static const Color white = Color(0xffffffff); //#6200EE
  static const Color primaryColor = Color(0xFF3B515C); //#3B515C
  static const Color secondaryColor = Color(0xFFF9AA33); //#F9AA33
  static const Color colorAccent = Color(0xff03DAC5); //#03DAC5
  static const Color splashBg = Color(0xff8CA0AF); //#8CA0AF
  static const Color backgroundDark = Color(0xff212121); //#80A0AF
  static const Color background = Color(0xffffffff); //#80A0AF
  static const Color headerColor = Color(0xff212121); //#80A0AF
  static const Color headerColorDark = Color(0xffffffff);
  static const Color blackGray = Color(0xff333333); //#333333
  static const Color textLightGray = Color(0xff969696); //#969696
  static const Color invalidBackGray = Color(0xffdadada); //#dadada
  static const Color lightGray = Color(0xffF2F2F2); //#F2F2F2
  static const Color borderGray = Color(0xff969696); //#969696
  static const Color orange = Color(0xffFF9D45); //#F9AA33
  static const Color darkBlue = Color(0xff3B515C); //#3B515C
  static const Color dimBlue = Color(0xff293C45); //#293C45
  static const Color linkColor = Color(0xff89BDDE); //#89BDDE
  static const Color textDarkGray = Color(0xFF1B1B1B); //#1B1B1B

  static const Color green = Color(0xff28AE60); //#1E552A
  static const Color red = Color(0xffEB1246); //
  static const Color gold = Color.fromRGBO(156, 175, 136, 1); //#D3B369
  static const Color goldSupport = Color.fromRGBO(255, 244, 216, 1); //#FFF4D8
  static const Gradient gradientGreen = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(0, 108, 50, 1), //#006C32
      Color.fromRGBO(189, 215, 83, 1), //#BDD753
    ],
  ); //#DA2128
  static const Gradient supportGradientGold = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(231, 175, 94, 1), //#E7AF5E
      Color.fromRGBO(252, 236, 198, 1), //#FCECC6
    ],
  );

  static const Gradient supportGradientDiamond = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(160, 249, 255, 1), //#A0F9FF
      Color.fromRGBO(254, 254, 255, 1), //#FEFEFF
    ],
  );

  static const Gradient supportGradientSilver = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(218, 218, 218, 1), //#DADADA
      Color.fromRGBO(237, 240, 245, 1), //#EDF0F5
    ],
  );

  static const Gradient supportGradientBronze = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(190, 243, 186, 1), //#BEF3BA
      Color.fromRGBO(232, 251, 231, 1), //#E8FBE7
      Color.fromRGBO(225, 255, 230, 1), //#E1FFE6
    ],
  );

  static const Gradient supportGradientWhite = LinearGradient(
    begin: Alignment(0.98, -0.22),
    end: Alignment(-0.98, 0.22),
    colors: [
      Color.fromRGBO(255, 255, 255, 1), //#BEF3BA
      Color.fromRGBO(255, 255, 255, 1), //#E8FBE7
      Color.fromRGBO(255, 255, 255, 0.78), //#E1FFE6
    ],
  );
}

class BlackColors {
  BlackColors._();

  static const Color black01 = Color.fromRGBO(45, 45, 45, 1); //#2D2D2D
  static const Color black02 = Color.fromRGBO(65, 61, 60, 1); //#413D3C
  static const Color black03 = Color.fromRGBO(62, 62, 62, 1); //#3E3E3E
  static const Color black04 = Color.fromRGBO(87, 87, 87, 1); //#575757
  static const Color black05 = Color.fromRGBO(104, 104, 104, 1); //#686868
  static const Color black06 = Color.fromRGBO(126, 123, 123, 1); //#7E7B7B
  static const Color black07 = Color.fromRGBO(137, 137, 137, 1); //#898989
  static const Color black08 = Color.fromRGBO(158, 158, 158, 1); //#9E9E9E
  static const Color black09 = Color.fromRGBO(163, 163, 163, 1); //#9A9A9A
  static const Color black10 = Color.fromRGBO(186, 186, 186, 1); //#BABABA
  static const Color black11 = Color.fromRGBO(207, 207, 207, 1); //#CFCFCF
  static const Color black12 = Color.fromRGBO(217, 217, 217, 1); //#D9D9D9
  static const Color black13 = Color.fromRGBO(236, 236, 236, 1); //#ECECEC
  static const Color black14 = Color.fromRGBO(242, 242, 242, 1); //#F2F2F2
  static const Color black15 = Color.fromRGBO(245, 245, 245, 1); //#F5F5F5
  static const Color black16 = Color.fromRGBO(255, 255, 255, 1); //#FFFFFF
}

class RedColors {
  RedColors._();

  static const Color red01 = Color.fromRGBO(255, 47, 55, 1); //#FF2F37
  static const Color red02 = Color.fromRGBO(250, 85, 92, 1); //#FA555C
  static const Color red03 = Color.fromRGBO(249, 106, 112, 1); //#F96A70
  static const Color red04 = Color.fromRGBO(254, 133, 138, 1); //#FE858A
  static const Color red05 = Color.fromRGBO(255, 155, 159, 1); //#FF9B9F
  static const Color red06 = Color.fromRGBO(255, 185, 188, 1); //#FFB9BC
  static const Color red07 = Color.fromRGBO(255, 212, 214, 1); //#FFD4D6
  static const Color red08 = Color.fromRGBO(254, 233, 234, 1); //#FEE9EA
}

class OrangeColors {
  OrangeColors._();

  static const Color orange01 = Color.fromRGBO(255, 156, 9, 1); //#FF9C09
  static const Color orange02 = Color.fromRGBO(255, 173, 51, 1); //#FFAF36
  static const Color orange03 = Color.fromRGBO(255, 192, 98, 1); //#FFC062
  static const Color orange04 = Color.fromRGBO(255, 206, 132, 1); //#FFCE84
  static const Color orange05 = Color.fromRGBO(255, 220, 167, 1); //#FFDCA7
  static const Color orange06 = Color.fromRGBO(255, 233, 201, 1); //#FFE9C9
  static const Color orange07 = Color.fromRGBO(255, 246, 233, 1); //#FFF6E9
  static const Color orange08 = Color.fromRGBO(255, 247, 236, 1); //#FFF7EC
}

class BlueColors {
  BlueColors._();

  static const Color blue01 = Color.fromRGBO(23, 92, 211, 1); //#175CD3
  static const Color blue02 = Color.fromRGBO(35, 106, 231, 1); //#236AE7
  static const Color blue03 = Color.fromRGBO(58, 122, 230, 1); //#3A7AE6
  static const Color blue04 = Color.fromRGBO(75, 134, 232, 1); //#4B86E8
  static const Color blue05 = Color.fromRGBO(110, 158, 236, 1); //#6E9EEC
  static const Color blue06 = Color.fromRGBO(147, 182, 241, 1); //#93B6F1
  static const Color blue07 = Color.fromRGBO(214, 182, 241, 1); //#DBE6FA
  static const Color blue08 = Color.fromRGBO(237, 243, 253, 1); //#EDF3FD
}

class GreenColors {
  GreenColors._();

  static const Color green01 = Color.fromRGBO(9, 176, 62, 1); //#09B03E
  static const Color green02 = Color.fromRGBO(23, 198, 79, 1); //#17C64F
  static const Color green03 = Color.fromRGBO(42, 211, 96, 1); //#2AD360
  static const Color green04 = Color.fromRGBO(42, 226, 101, 1); //#2AE265
  static const Color green05 = Color.fromRGBO(74, 243, 128, 1); //#4AF380
  static const Color green06 = Color.fromRGBO(135, 251, 172, 1); //#87FBAC
  static const Color green07 = Color.fromRGBO(189, 255, 210, 1); //#BDFFD2
  static const Color green08 = Color.fromRGBO(216, 255, 228, 1); //#D8FFE4
}
