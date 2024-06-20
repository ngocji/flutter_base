import 'package:flutter_widget/flutter_widget.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final Color? borderColor;
  final double radius;
  final BoxBorder? border;
  final Decoration? decoration;
  final List<BoxShadow>? boxShadow;
  final ImageProvider? image;
  final bool disabled;
  final BoxFit? imageFit;

  const CardContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.color,
    this.borderColor,
    this.radius = 8,
    this.border,
    this.decoration,
    this.boxShadow,
    this.image,
    this.imageFit,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(boxShadow == null || decoration == null,
        'Cannot provide both a boxShadow and a decoration');
    return Container(
        width: MediaQuery.sizeOf(context).width,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: context.color.backgroundCard,
          border: Border.all(
            width: 1,
            color: context.color.backgroundCard,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: child);
  }
}
