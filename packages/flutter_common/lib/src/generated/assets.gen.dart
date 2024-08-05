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
import 'package:flutter_widget/flutter_widget.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_down.svg
  SvgGenImage get icArrowDown =>
      const SvgGenImage('assets/icons/ic_arrow_down.svg');

  /// File path: assets/icons/ic_arrow_drop_down.svg
  SvgGenImage get icArrowDropDown =>
      const SvgGenImage('assets/icons/ic_arrow_drop_down.svg');

  /// File path: assets/icons/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/icons/ic_back.svg');

  /// File path: assets/icons/ic_bottom_sheet.svg
  SvgGenImage get icBottomSheet =>
      const SvgGenImage('assets/icons/ic_bottom_sheet.svg');

  /// File path: assets/icons/ic_chevron_left.svg
  SvgGenImage get icChevronLeft =>
      const SvgGenImage('assets/icons/ic_chevron_left.svg');

  /// File path: assets/icons/ic_chevron_right.svg
  SvgGenImage get icChevronRight =>
      const SvgGenImage('assets/icons/ic_chevron_right.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_close_popup.svg
  SvgGenImage get icClosePopup =>
      const SvgGenImage('assets/icons/ic_close_popup.svg');

  /// File path: assets/icons/ic_favorite.svg
  SvgGenImage get icFavorite =>
      const SvgGenImage('assets/icons/ic_favorite.svg');

  /// File path: assets/icons/ic_history.svg
  SvgGenImage get icHistory => const SvgGenImage('assets/icons/ic_history.svg');

  /// File path: assets/icons/ic_refresh.svg
  SvgGenImage get icRefresh => const SvgGenImage('assets/icons/ic_refresh.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_star.svg
  SvgGenImage get icStar => const SvgGenImage('assets/icons/ic_star.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icArrowDown,
        icArrowDropDown,
        icBack,
        icBottomSheet,
        icChevronLeft,
        icChevronRight,
        icClose,
        icClosePopup,
        icFavorite,
        icHistory,
        icRefresh,
        icSettings,
        icStar
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage with AssetIcon {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
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
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;

  String get package => "flutter_common";
}
