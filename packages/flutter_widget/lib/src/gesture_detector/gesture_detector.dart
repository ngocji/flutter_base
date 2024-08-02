import 'package:flutter/material.dart' as m;
import 'package:flutter_widget/flutter_widget.dart';

class GestureDetector extends m.StatelessWidget {
  final m.VoidCallback? onTap;
  final m.GestureTapDownCallback? onTapDown;
  final m.GestureLongPressCallback? onLongPress;
  final Color? color;
  final double radius;
  final m.Widget? child;
  final bool isCircle;

  const GestureDetector({
    m.Key? key,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.color,
    this.radius = 0,
    this.isCircle = false,
    this.child,
  }) : super(key: key);

  @override
  m.Widget build(m.BuildContext context) {
    return m.GestureDetector(
      onTap: onTap,
      onTapDown: onTapDown,
      onLongPress: onLongPress,
      child: child,
    );
  }
}
