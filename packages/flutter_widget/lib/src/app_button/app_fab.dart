import '../../flutter_widget.dart';

class AppFab extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final bool enabled;
  final dynamic icon;
  final double size;
  final String? label;
  final Color? labelColor;
  final VoidCallback onPressed;

  const AppFab(
      {super.key,
      this.backgroundColor,
      this.iconColor,
      this.enabled = true,
      this.icon,
      this.label,
      this.labelColor,
      this.size = 56,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return label != null
        ? FloatingActionButton.extended(
            onPressed: onPressed,
            label: Text(
              label ?? '',
              style: context.textTheme.labelLarge?.copyWith(
                  color: labelColor ?? context.color.onPrimaryContainer),
            ),
            backgroundColor:
                backgroundColor ?? context.color.primaryContainer,
            icon: AppIcon.icon24(
              path: icon,
              color: iconColor ?? context.color.onPrimaryContainer,
            ))
        : FloatingActionButton(
            onPressed: onPressed,
            backgroundColor:
                backgroundColor ?? context.color.primaryContainer,
            child: AppIcon.icon24(
                path: icon,
                color: iconColor ?? context.color.onPrimaryContainer),
          );
  }
}
