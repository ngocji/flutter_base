import 'package:flutter_widget/flutter_widget.dart';

// todo working appbutton
class AppButton extends StatelessWidget {
  static const double DEFAULT_RADIUS = 38;

  final AppButtonType type;
  final VoidCallback? onPressed;
  final String? iconPath;
  final String label;
  final double radius;
  final double? strokeWidth;
  final double? height;
  final double? sizeIcon;
  final bool isLargeButton;
  final Color? colorBg;
  final Color? colorIcon;
  final Color? colorBorder;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool disabled;
  final bool isDecoration;
  final AppButtonIconGravity iconGravity;
  final MainAxisAlignment mainAxisAlignment;

  const AppButton(
      {Key? key,
      this.type = AppButtonType.other,
      this.onPressed,
      this.iconPath,
      this.radius = DEFAULT_RADIUS,
      this.strokeWidth,
      this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      this.colorBg,
      this.colorBorder,
      this.textStyle,
      required this.label,
      this.isDecoration = true,
      this.colorIcon,
      this.sizeIcon,
      this.height,
      this.isLargeButton = true,
      this.disabled = false,
      this.iconGravity = AppButtonIconGravity.start,
      this.mainAxisAlignment = MainAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = disabled
        ? type.bgColorDisabled(context)
        : colorBg ?? type.bgColor(context);
    final borderColor =
        disabled ? bgColor : colorBorder ?? type.borderColor(context);

    return GestureDetector(
      radius: radius,
      onTap: () => disabled ? null : onPressed?.call(),
      child: Container(
          padding: padding,
          height: height ?? type.height,
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
        return [_buildIcon(iconPath), Space.h6(), _buildText(context)];
      case AppButtonIconGravity.bottom:
        return [_buildText(context), Space.h6(), _buildIcon(iconPath)];
      case AppButtonIconGravity.start:
        return [];
      case AppButtonIconGravity.end:
        return [];
      case AppButtonIconGravity.textStart:
        return [_buildIcon(iconPath), Space.w12(), _buildText(context)];
      case AppButtonIconGravity.textEnd:
        return [
          _buildText(context),
          Space.w12(),
          _buildIcon(iconPath),
        ];
      default:
        return [];
    }
  }

  bool _isFullWidth() {
    return isLargeButton && type.isFullWidth;
  }

  TextStyle _labelStyle(BuildContext context) {
    return textStyle ??
        type.labelStyle(context).copyWith(
              color: disabled
                  ? type.labelColorDisabled(context)
                  : type.labelColor(context),
            );
  }

  Widget _buildIcon(String? path) {
    return path != null
        ? AppIcon(
            path: path,
            width: sizeIcon ?? 24,
            height: sizeIcon ?? 24,
            color: colorIcon,
          )
        : const SizedBox.shrink();
  }

  Widget _buildSpaceIcon() {
    return SizedBox(width: sizeIcon ?? 24, height: sizeIcon ?? 24);
  }

  Widget _buildText(BuildContext context) {
    return Text(
      label,
      style: _labelStyle(context),
      textAlign: TextAlign.center,
    );
  }

  factory AppButton.primary({
    required String label,
    VoidCallback? onPressed,
    String? icon,
    double? sizeIcon,
    bool disabled = false,
    AppButtonIconGravity? iconGravity,
    double radius = DEFAULT_RADIUS,
    bool isLargeButton = true,
    EdgeInsets? padding,
    TextStyle? textStyle
  }) {
    return AppButton(
      type: AppButtonType.primary,
      label: label,
      iconPath: icon,
      iconGravity: iconGravity ?? AppButtonIconGravity.textStart,
      onPressed: onPressed,
      disabled: disabled,
      sizeIcon: sizeIcon,
      radius: radius,
      isLargeButton: isLargeButton,
      padding: padding,
      textStyle: textStyle,
    );
  }

  factory AppButton.text({
    required String label,
    VoidCallback? onPressed,
    String? icon,
    double? sizeIcon,
    bool disabled = false,
    AppButtonIconGravity? iconGravity,
    bool isLargeButton = false,
    EdgeInsets? padding,
    TextStyle? textStyle
  }) {
    return AppButton(
      type: AppButtonType.text,
      label: label,
      iconPath: icon,
      iconGravity: iconGravity ?? AppButtonIconGravity.textStart,
      onPressed: onPressed,
      disabled: disabled,
      sizeIcon: sizeIcon,
      isLargeButton: isLargeButton,
      padding: padding,
      textStyle: textStyle,
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
        return 48;
    }
  }

  bool get isFullWidth {
    switch (this) {
      case AppButtonType.text:
        return false;
      default:
        return true;
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
        return context.color.inverseSurface;
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
    switch (this) {
      case AppButtonType.text:
      case AppButtonType.outline:
        return context.color.inverseSurface;
      default:
        return context.color.onInverseSurface;
    }
  }

  TextStyle labelStyle(BuildContext context) {
    return context.textStyle.textMdBold;
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case AppButtonType.outline:
        return context.color.outline;
      default:
        return Colors.transparent;
    }
  }
}
