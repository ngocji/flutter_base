import 'package:flutter_widget/flutter_widget.dart';
import 'package:flutter_widget/src/theme/guideline_text_style.dart';

class AppButton extends StatelessWidget {
  static const double defaultRadius = 100;
  static const EdgeInsets defaultPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);

  final AppButtonType type;
  final VoidCallback? onPressed;
  final String label;
  final double radius;
  final double? strokeWidth;
  final double? height;
  final bool isFillWidth;

  final Color? colorBg;
  final Color? colorBorder;
  final Color? labelColor;

  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool disabled;
  final bool isDecoration;

  final String? iconPath;
  final double? iconSize;
  final Color? iconColor;
  final AppButtonIconGravity iconGravity;
  final MainAxisAlignment mainAxisAlignment;

  const AppButton(
      {super.key,
      this.type = AppButtonType.other,
      this.onPressed,
      this.radius = defaultRadius,
      this.strokeWidth,
      this.padding,
      this.colorBg,
      this.colorBorder,
      this.labelColor,
      this.textStyle,
      required this.label,
      this.isDecoration = true,
      this.iconSize,
      this.height,
      this.isFillWidth = true,
      this.disabled = false,
      this.iconPath,
      this.iconColor,
      this.iconGravity = AppButtonIconGravity.start,
      this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    final bgColor = disabled
        ? type.bgColorDisabled(context)
        : colorBg ?? type.bgColor(context);
    final borderColor = disabled
        ? type.borderColorDisabled(context)
        : colorBorder ?? type.borderColor(context);

    return GestureDetector(
      radius: radius,
      onTap: () => disabled ? null : onPressed?.call(),
      child: Container(
          padding: padding ?? defaultPadding,
          height: _getHeight(),
          decoration: isDecoration
              ? BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(radius),
                  border:
                      Border.all(width: strokeWidth ?? 1, color: borderColor),
                )
              : null,
          child: (iconPath != null)
              ? _buildContent(context)
              : _buildContentNotImage(context)),
    );
  }

  double _getHeight() {
    var h = height ?? type.height;
    if (iconPath != null &&
        (iconGravity == AppButtonIconGravity.top ||
            iconGravity == AppButtonIconGravity.bottom)) {
      h += (iconSize ?? 18) + 10;
    }
    return h;
  }

  Widget _buildContentNotImage(BuildContext context) {
    final isFullWidth = _isFullWidth();
    return Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment,
      children: [_buildText(context)],
    );
  }

  Widget _buildContent(BuildContext context) {
    final isFullWidth = _isFullWidth();
    return Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment,
      children: _buildChildren(context, isFullWidth),
    );
  }

  List<Widget> _buildChildren(BuildContext context, bool isFullWidth) {
    switch (iconGravity) {
      case AppButtonIconGravity.top:
        return [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIcon(context, iconPath),
              Space.h8(),
              _buildText(context)
            ],
          )
        ];
      case AppButtonIconGravity.bottom:
        return [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildText(context),
              Space.h8(),
              _buildIcon(context, iconPath)
            ],
          )
        ];
      case AppButtonIconGravity.start:
        return [
          _buildIcon(context, iconPath),
          Expanded(
              child: Align(
            child: _buildText(context),
          )),
          _buildSpaceIcon(),
        ];
      case AppButtonIconGravity.end:
        return [
          _buildSpaceIcon(),
          Expanded(
              child: Align(
            child: _buildText(context),
          )),
          _buildIcon(context, iconPath),
        ];
      case AppButtonIconGravity.textStart:
        return [_buildIcon(context, iconPath), Space.w8(), _buildText(context)];
      case AppButtonIconGravity.textEnd:
        return [
          _buildText(context),
          Space.w8(),
          _buildIcon(context, iconPath),
        ];
      default:
        return [];
    }
  }

  bool _isFullWidth() {
    return isFillWidth;
  }

  TextStyle _labelStyle(BuildContext context) {
    return textStyle ??
        type.labelStyle(context).copyWith(
              color: disabled
                  ? type.labelColorDisabled(context)
                  : type.labelColor(context),
            );
  }

  Widget _buildIcon(BuildContext context, String? path) {
    return path != null
        ? Container(
            width: iconSize ?? 18,
            height: iconSize ?? 18,
            padding: const EdgeInsets.all(3),
            child: AppIcon.iconInfinity(
              path: path,
              color: disabled
                  ? type.labelColorDisabled(context)
                  : iconColor ?? type.labelColor(context),
            ),
          )
        : const SizedBox.shrink();
  }

  Widget _buildSpaceIcon() {
    return SizedBox(width: iconSize ?? 18, height: iconSize ?? 18);
  }

  Widget _buildText(BuildContext context) {
    return Text(
      label,
      style: _labelStyle(context),
      textAlign: TextAlign.center,
    );
  }

  factory AppButton.type({
    required AppButtonType type,
    required String label,
    VoidCallback? onPressed,
    String? icon,
    double? sizeIcon,
    bool disabled = false,
    AppButtonIconGravity? iconGravity,
    bool isFullWidth = false,
    EdgeInsets? padding,
    TextStyle? textStyle,
    Color? colorBg,
    Color? colorBorder,
    Color? labelColor,
    double? strokeWidth,
    double? radius
  }) {
    return AppButton(
      type: type,
      label: label,
      iconPath: icon,
      iconGravity: iconGravity ?? AppButtonIconGravity.textStart,
      onPressed: onPressed,
      disabled: disabled,
      iconSize: sizeIcon,
      isFillWidth: isFullWidth,
      padding: padding,
      textStyle: textStyle,
      colorBg: colorBg,
      colorBorder: colorBorder,
      labelColor: labelColor,
      strokeWidth: strokeWidth,
      radius: radius ?? defaultRadius,
    );
  }
}

enum AppButtonIconGravity { start, end, top, bottom, textStart, textEnd }

enum AppButtonType {
  primary,
  secondary,
  tertiary,
  outline,
  error,
  text,
  other;

  double get height {
    switch (this) {
      default:
        return 40;
    }
  }

  Color bgColor(BuildContext context) {
    switch (this) {
      case AppButtonType.primary:
        return context.color.primary;

      case AppButtonType.secondary:
        return context.color.secondary;

      case AppButtonType.error:
        return context.color.error;

      case AppButtonType.tertiary:
        return context.color.tertiary;

      case AppButtonType.text:
      case AppButtonType.outline:
        return Colors.transparent;
      default:
        return context.color.tertiaryContainer;
    }
  }

  Color bgColorDisabled(BuildContext context) {
    switch (this) {
      case AppButtonType.text:
      case AppButtonType.outline:
        return Colors.transparent;
      default:
        return context.color.onSurface.withOpacity(0.12);
    }
  }

  Color labelColor(BuildContext context) {
    switch (this) {
      case AppButtonType.primary:
        return context.color.onPrimary;

      case AppButtonType.secondary:
        return context.color.onSecondary;

      case AppButtonType.error:
        return context.color.onError;

      case AppButtonType.tertiary:
        return context.color.onTertiary;

      case AppButtonType.text:
        return context.color.primary;

      default:
        return context.color.primary;
    }
  }

  Color labelColorDisabled(BuildContext context) {
    return context.color.onSurface.withOpacity(0.38);
  }

  TextStyle labelStyle(BuildContext context) {
    return context.textTheme.labelLarge ?? GuidelineTextStyle.textMdBold;
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case AppButtonType.outline:
        return context.color.outline;
      default:
        return Colors.transparent;
    }
  }

  Color borderColorDisabled(BuildContext context) {
    switch (this) {
      case AppButtonType.outline:
        return context.color.onSurface.withOpacity(0.12);
      default:
        return Colors.transparent;
    }
  }
}
