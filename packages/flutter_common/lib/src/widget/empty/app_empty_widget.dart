import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class AppEmptyWidget extends StatelessWidget {
  final dynamic icon;
  final double? iconSize;
  final Color? iconColor;
  final String? emptyLabel;

  const AppEmptyWidget(
      {super.key,
        this.icon,
        this.iconSize = 64,
        this.iconColor,
        this.emptyLabel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon != null
              ? AppIcon(
            path: icon,
            width: iconSize,
            height: iconSize,
            color: iconColor ?? context.color.inverseSurface.withOpacity(0.6),
          )
              : const SizedBox.shrink(),
          Space.h4(),
          Text(
            emptyLabel ?? CommonLocalization.current.empty,
            style: context.textTheme.bodyMedium
                ?.copyWith(color: context.color.inverseSurface.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
