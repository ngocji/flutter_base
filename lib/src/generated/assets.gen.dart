/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/OpenSans-Bold.ttf
  String get openSansBold => 'assets/fonts/OpenSans-Bold.ttf';

  /// File path: assets/fonts/OpenSans-BoldItalic.ttf
  String get openSansBoldItalic => 'assets/fonts/OpenSans-BoldItalic.ttf';

  /// File path: assets/fonts/OpenSans-ExtraBold.ttf
  String get openSansExtraBold => 'assets/fonts/OpenSans-ExtraBold.ttf';

  /// File path: assets/fonts/OpenSans-ExtraBoldItalic.ttf
  String get openSansExtraBoldItalic =>
      'assets/fonts/OpenSans-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/OpenSans-Italic.ttf
  String get openSansItalic => 'assets/fonts/OpenSans-Italic.ttf';

  /// File path: assets/fonts/OpenSans-Light.ttf
  String get openSansLight => 'assets/fonts/OpenSans-Light.ttf';

  /// File path: assets/fonts/OpenSans-LightItalic.ttf
  String get openSansLightItalic => 'assets/fonts/OpenSans-LightItalic.ttf';

  /// File path: assets/fonts/OpenSans-Regular.ttf
  String get openSansRegular => 'assets/fonts/OpenSans-Regular.ttf';

  /// File path: assets/fonts/OpenSans-Semibold.ttf
  String get openSansSemibold => 'assets/fonts/OpenSans-Semibold.ttf';

  /// File path: assets/fonts/OpenSans-SemiboldItalic.ttf
  String get openSansSemiboldItalic =>
      'assets/fonts/OpenSans-SemiboldItalic.ttf';

  /// List of all assets
  List<String> get values => [
        openSansBold,
        openSansBoldItalic,
        openSansExtraBold,
        openSansExtraBoldItalic,
        openSansItalic,
        openSansLight,
        openSansLightItalic,
        openSansRegular,
        openSansSemibold,
        openSansSemiboldItalic
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/file.svg
  SvgGenImage get file => const SvgGenImage('assets/images/file.svg');

  /// List of all assets
  List<SvgGenImage> get values => [file];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
