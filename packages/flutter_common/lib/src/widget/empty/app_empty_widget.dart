import 'package:flutter_widget/flutter_widget.dart';

class AppEmptyWidget extends StatelessWidget {
  final IconData? icon;
  final String? iconPath;
  final String? iconPackageName;
  final double? iconSize;
  final Color? iconColor;
  final String? emptyLabel;

  const AppEmptyWidget(
      {Key? key,
      this.icon,
      this.iconPath,
      this.iconPackageName,
      this.iconSize = 64,
      this.iconColor,
      this.emptyLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon != null
              ? Icon(icon,
                  color: iconColor ?? Colors.transparent, size: iconSize ?? 64)
              : iconPath != null
                  ? AppIcon(
                      path: iconPath!,
                      package: iconPackageName,
                      width: iconSize ?? 64,
                      height: iconSize ?? 64,
                      color: iconColor ?? Colors.transparent,
                    )
                  : const SizedBox.shrink(),
          Space.h4(),
          Text(
            emptyLabel ?? "Empty!",
            style: context.textTheme.bodyMedium
                ?.copyWith(color: context.color.inverseSurface),
          ),
        ],
      ),
    );
  }
}
