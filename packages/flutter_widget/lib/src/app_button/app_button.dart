import 'package:flutter_widget/flutter_widget.dart';

class AppButton extends StatelessWidget {
  static const double DEFAULT_RADIUS = 38;

  final AppButtonType type;
  final VoidCallback? onPressed;
  final String? pathLeft;
  final String? pathRight;
  final String label;
  final double radius;
  final double? height;
  final double? sizeIcon;
  final double? sizeIconRight;
  final bool isLargeButton;
  final Color? colorBg;
  final Color? colorIconLeft;
  final Color? colorIconRight;
  final Color? colorBorder;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool disabled;
  final bool isDecoration;

  const AppButton({
    Key? key,
    this.type = AppButtonType.primaryLarge,
    this.onPressed,
    this.pathLeft,
    this.pathRight,
    this.radius = DEFAULT_RADIUS,
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.colorBg,
    this.colorBorder,
    this.textStyle,
    required this.label,
    this.isDecoration = true,
    this.colorIconLeft,
    this.colorIconRight,
    this.sizeIcon,
    this.sizeIconRight,
    this.height,
    this.isLargeButton = true,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = disabled
        ? type.bgColorDisabled(context)
        : colorBg ?? type.bgColor(context);
    final borderColor =
        disabled ? bgColor : colorBorder ?? type.borderColor(context);

    return GestureDetector(
      onTap: () => disabled ? null : onPressed?.call(),
      child: Container(
          padding: padding,
          height: height ?? type.height,
          decoration: isDecoration
              ? BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(width: 1.5, color: borderColor),
                )
              : null,
          child: (pathLeft != null)
              ? _buildContent(context)
              : _buildContentNotImage(context)),
    );
  }

  Widget _buildContentNotImage(BuildContext context) {
    final labelStyle = textStyle ??
        type.labelStyle(context).copyWith(
              color: disabled
                  ? type.labelColorDisabled(context)
                  : type.labelColor(context),
            );
    final isFullWidth = isLargeButton && type.isFullWidth;
    return Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: labelStyle,
          textAlign: TextAlign.start,
        ),
        if (pathRight != null) Space.w8(),
        _buildIconRight(pathRight, context),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final labelStyle = textStyle ??
        type.labelStyle(context).copyWith(
              color: disabled
                  ? type.labelColorDisabled(context)
                  : type.labelColor(context),
            );
    final isFullWidth = isLargeButton && type.isFullWidth;
    return Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Space.w20(),
            _buildIcon(pathLeft, context),
            Space.w12(),
            Text(
              label,
              style: labelStyle,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        if (pathRight != null) Space.w8(),
        _buildIconRight(pathRight, context),
      ],
    );
  }

  Widget _buildIcon(String? path, BuildContext context) {
    return AppIcon(
      path: path ?? '',
      width: sizeIcon ?? 24,
      height: sizeIcon ?? 24,
      color: colorIconLeft,
    );
  }

  Widget _buildIconRight(String? path, BuildContext context) {
    return path != null
        ? AppIcon(
            path: path,
            width: sizeIconRight ?? 24,
            height: sizeIconRight ?? 24,
            color: colorIconRight,
          )
        : const SizedBox.shrink();
  }

  factory AppButton._buttonByType({
    required AppButtonType type,
    required String label,
    VoidCallback? onPressed,
    String? pathLeft,
    String? pathRight,
    double? sizeIcon,
    Color? colorIconRight,
    bool disabled = false,
    double radius = 8,
  }) {
    return AppButton(
      type: type,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      colorIconRight: colorIconRight,
      sizeIcon: sizeIcon,
      pathLeft: pathLeft,
      pathRight: pathRight,
      radius: radius,
    );
  }

  factory AppButton.primaryLarge({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.primaryLarge,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.primaryLargeWithIcon({
    required String label,
    VoidCallback? onPressed,
    String? pathLeft,
    String? pathRight,
    Color? colorIconRight,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.primaryLargeWithImage,
      label: label,
      onPressed: onPressed,
      pathLeft: pathLeft,
      pathRight: pathRight,
      colorIconRight: colorIconRight,
      sizeIcon: 42,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.secondaryLarge({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.secondaryLarge,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.textLarge({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.textLarge,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.primaryMedium({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.primaryMedium,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.secondaryMedium({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.secondaryMedium,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.textMedium({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.textMedium,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.primarySmall({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = 8,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.primarySmall,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.secondarySmall({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.secondarySmall,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }

  factory AppButton.textSmall({
    required String label,
    VoidCallback? onPressed,
    bool disabled = false,
    double radius = DEFAULT_RADIUS,
  }) {
    return AppButton._buttonByType(
      type: AppButtonType.textSmall,
      label: label,
      onPressed: onPressed,
      disabled: disabled,
      radius: radius,
    );
  }
}

enum AppButtonType {
  primaryLarge,
  primaryLargeWithImage,
  secondaryLarge,
  textLarge,
  primaryMedium,
  secondaryMedium,
  textMedium,
  primarySmall,
  secondarySmall,
  customBackground,
  textSmall;

  double get height {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
        return 76;
      case AppButtonType.primaryLarge:
      case AppButtonType.secondaryLarge:
      case AppButtonType.textLarge:
        return 48;
      case AppButtonType.primaryMedium:
      case AppButtonType.secondaryMedium:
      case AppButtonType.textMedium:
        return 40;
      case AppButtonType.primarySmall:
      case AppButtonType.secondarySmall:
      case AppButtonType.textSmall:
        return 32;
      default:
        return 48;
    }
  }

  bool get isFullWidth {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
      case AppButtonType.primaryLarge:
      case AppButtonType.secondaryLarge:
      case AppButtonType.textLarge:
        return true;
      case AppButtonType.primaryMedium:
      case AppButtonType.secondaryMedium:
      case AppButtonType.textMedium:
        return true;
      case AppButtonType.primarySmall:
      case AppButtonType.secondarySmall:
      case AppButtonType.textSmall:
        return false;
      default:
        return true;
    }
  }

  Color bgColor(BuildContext context) {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
      case AppButtonType.primaryMedium:
      case AppButtonType.primarySmall:
      case AppButtonType.primaryLarge:
        return context.color.primary;

      case AppButtonType.secondaryLarge:
      case AppButtonType.secondaryMedium:
      case AppButtonType.secondarySmall:
        return context.color.secondaryContainer;
      case AppButtonType.textLarge:
      case AppButtonType.textMedium:
      case AppButtonType.textSmall:
        return Colors.transparent;
      default:
        return context.color.tertiaryContainer;
    }
  }

  Color bgColorDisabled(BuildContext context) {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
      case AppButtonType.primaryLarge:
      case AppButtonType.primaryMedium:
      case AppButtonType.primarySmall:
        return context.color.primary.withOpacity(40);
      case AppButtonType.secondaryLarge:
      case AppButtonType.secondaryMedium:
      case AppButtonType.secondarySmall:
        return context.color.secondaryContainer.withOpacity(40);
      case AppButtonType.textLarge:
      case AppButtonType.textMedium:
      case AppButtonType.textSmall:
        return Colors.transparent;
      default:
        return context.color.tertiaryContainer.withOpacity(40);
    }
  }

  Color labelColor(BuildContext context) {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
      case AppButtonType.primaryMedium:
      case AppButtonType.primarySmall:
      case AppButtonType.primaryLarge:
        return context.color.onPrimary;
      case AppButtonType.secondaryLarge:
      case AppButtonType.secondaryMedium:
      case AppButtonType.secondarySmall:
        return context.color.onSecondaryContainer;
      case AppButtonType.textLarge:
      case AppButtonType.textMedium:
      case AppButtonType.textSmall:
        return context.color.primary;
      default:
        return context.color.primary;
    }
  }

  Color labelColorDisabled(BuildContext context) {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
      case AppButtonType.primaryLarge:
      case AppButtonType.primaryMedium:
      case AppButtonType.primarySmall:
        return context.color.onPrimary.withOpacity(40);
      case AppButtonType.secondaryLarge:
      case AppButtonType.secondaryMedium:
      case AppButtonType.secondarySmall:
        return context.color.onSecondaryContainer.withOpacity(40);
      case AppButtonType.textLarge:
      case AppButtonType.textMedium:
      case AppButtonType.textSmall:
        return context.color.primary.withOpacity(40);
      default:
        return context.color.primary.withOpacity(40);
    }
  }

  TextStyle labelStyle(BuildContext context) {
    switch (this) {
      case AppButtonType.primaryLargeWithImage:
        return context.textStyle.textSmallBold;
      case AppButtonType.primaryLarge:
      case AppButtonType.primaryMedium:
      case AppButtonType.secondaryLarge:
      case AppButtonType.secondaryMedium:
      case AppButtonType.textLarge:
      case AppButtonType.textMedium:
        return context.textStyle.textMdBold;
      case AppButtonType.primarySmall:
      case AppButtonType.secondarySmall:
      case AppButtonType.textSmall:
        return context.textStyle.textXsBold;
      default:
        return context.textStyle.textMdBold;
    }
  }

  Color borderColor(BuildContext context) {
    return Colors.transparent;
  }
}
