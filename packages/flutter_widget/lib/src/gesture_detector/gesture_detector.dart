import 'package:flutter/material.dart' as m;
import 'package:flutter_widget/flutter_widget.dart';

class GestureDetector extends m.StatelessWidget {
  final m.VoidCallback? onTap;
  final m.GestureTapDownCallback? onTapDown;
  final m.Widget? child;

  const GestureDetector({
    m.Key? key,
    this.onTap,
    this.onTapDown,
    this.child,
  }) : super(key: key);

  @override
  m.Widget build(m.BuildContext context) {
    return m.InkWell(
      radius: 38,
      highlightColor: context.color.onPrimary,
      onTap: onTap,
      onTapDown: onTapDown,
      child: child,
    );
  }
}
