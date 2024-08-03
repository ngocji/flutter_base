import '../../flutter_widget.dart';

class AppIconButton extends StatelessWidget {
  static const double defaultSize = 40;
  final dynamic icon;
  final double size;

  final Color? backgroundColor;
  final Color? borderColor;
  final Color? tint;

  final Color? disableBackgroundColor;
  final Color? disableBorderColor;
  final Color? disableTint;

  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final bool enabled;
  final _Variant _variant;

  const AppIconButton.fill(
      {super.key,
      this.icon,
      this.size = defaultSize,
      this.backgroundColor,
      this.tint,
      this.onPressed,
      this.padding,
      this.borderColor,
      this.disableBackgroundColor,
      this.disableBorderColor,
      this.disableTint,
      this.enabled = true})
      : _variant = _Variant.fill;

  const AppIconButton.onlyIcon(
      {super.key,
      this.icon,
      this.size = defaultSize,
      this.backgroundColor,
      this.tint,
      this.onPressed,
      this.padding,
      this.borderColor,
      this.disableBackgroundColor,
      this.disableBorderColor,
      this.disableTint,
      this.enabled = true})
      : _variant = _Variant.standard;

  const AppIconButton.outline(
      {super.key,
      this.icon,
      this.size = defaultSize,
      this.backgroundColor,
      this.tint,
      this.onPressed,
      this.padding,
      this.borderColor,
      this.disableBackgroundColor,
      this.disableBorderColor,
      this.disableTint,
      this.enabled = true})
      : _variant = _Variant.outline;

  const AppIconButton.tonal(
      {super.key,
      this.icon,
      this.size = defaultSize,
      this.backgroundColor,
      this.tint,
      this.onPressed,
      this.padding,
      this.borderColor,
      this.disableBackgroundColor,
      this.disableBorderColor,
      this.disableTint,
      this.enabled = true})
      : _variant = _Variant.tonal;

  @override
  Widget build(BuildContext context) {
    switch (_variant) {
      case _Variant.fill:
        return IconButton.filled(
            onPressed: enabled ? onPressed : null,
            icon: Icon(icon, color: enabled ? tint : disableTint),
            padding: padding,
            iconSize: size,
            color: backgroundColor,
            disabledColor: disableBackgroundColor);
      case _Variant.outline:
        return IconButton.outlined(
          onPressed: enabled ? onPressed : null,
          icon: Icon(icon, color: enabled ? tint : disableTint),
          padding: padding,
          iconSize: size,
          color: backgroundColor,
          disabledColor: disableBackgroundColor,
          style: borderColor != null
              ? IconButton.styleFrom(
                  side: BorderSide(
                      color: enabled
                          ? borderColor!
                          : disableBorderColor ?? borderColor!.withOpacity(0.5)),
                )
              : null,
        );
      case _Variant.tonal:
        return IconButton.filledTonal(
            onPressed: enabled ? onPressed : null,
            icon: Icon(icon, color: enabled ? tint : disableTint),
            padding: padding,
            iconSize: size,
            color: backgroundColor,
            disabledColor: disableBackgroundColor);
      default:
        return IconButton(
            onPressed: enabled ? onPressed : null,
            icon: Icon(icon, color: enabled ? tint : disableTint),
            padding: padding,
            iconSize: size,
            color: backgroundColor,
            disabledColor: disableBackgroundColor);
    }
  }
}

enum _Variant {
  standard,
  fill,
  tonal,
  outline;
}
