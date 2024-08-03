import 'package:flutter_widget/flutter_widget.dart';

class CardContainer extends StatelessWidget {
  static const defaultPadding =
      EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  static const double defaultRadius = 12;
  static const double defaultElevation = 5;

  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? shadowColor;
  final double radius;
  final double elevation;
  final _Variant _variant;

  const CardContainer.elevation(
      {super.key,
      required this.child,
      this.padding = defaultPadding,
      this.margin,
      this.backgroundColor,
      this.borderColor,
      this.shadowColor,
      this.radius = defaultRadius,
      this.elevation = defaultElevation})
      : _variant = _Variant.elevated;

  const CardContainer.fill(
      {super.key,
      required this.child,
      this.padding = defaultPadding,
      this.margin,
      this.backgroundColor,
      this.borderColor,
      this.shadowColor,
      this.radius = defaultRadius,
      this.elevation = 0})
      : _variant = _Variant.fill;

  const CardContainer.outline(
      {super.key,
      required this.child,
      this.padding = defaultPadding,
      this.margin,
      this.backgroundColor,
      this.borderColor,
      this.shadowColor,
      this.radius = defaultRadius,
      this.elevation = 0})
      : _variant = _Variant.outline;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor ?? _variant.defaultBackgroundColor(context),
      shadowColor: shadowColor ?? context.color.shadow,
      elevation: elevation,
      borderOnForeground: _variant == _Variant.outline,
      shape: _variant == _Variant.outline
          ? RoundedRectangleBorder(
              side: BorderSide(
                  color: borderColor ?? _variant.defaultBorderColor(context),
                  width: 1),
              borderRadius: BorderRadius.circular(radius),
            )
          : null,
      margin: margin,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

enum _Variant {
  elevated,
  outline,
  fill;

  Color defaultBackgroundColor(BuildContext context) {
    switch (this) {
      case _Variant.outline:
        return context.color.surface;
      case _Variant.fill:
        return context.color.surfaceContainerHighest;
      default:
        return context.color.surfaceContainerLow;
    }
  }

  Color defaultBorderColor(BuildContext context) {
    switch (this) {
      case _Variant.outline:
        return context.color.outlineVariant;
      default:
        return Colors.transparent;
    }
  }
}
