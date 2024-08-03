import 'package:flutter_core/flutter_core.dart';

import '../../flutter_widget.dart';

class BottomBarItem {
  final dynamic icon;
  final dynamic selectedIcon;
  final String label;

  BottomBarItem({required this.icon, required this.label, this.selectedIcon});
}

class BaseBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final List<BottomBarItem> icons;
  final Color? iconColor;
  final NavigationDestinationLabelBehavior behavior;
  final double? elevation;
  final Function(int index) onChanged;

  const BaseBottomBar(
      {super.key,
      required this.selectedIndex,
      this.backgroundColor,
      required this.icons,
      this.iconColor,
      this.elevation,
      this.behavior = NavigationDestinationLabelBehavior.alwaysShow,
      this.indicatorColor,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor ?? context.color.surfaceContainer,
        elevation: elevation,
        labelBehavior: behavior,
        onDestinationSelected: onChanged,
        indicatorColor: indicatorColor ?? context.color.secondaryContainer,
        destinations: icons
            .mapIndexed((item, index) => NavigationDestination(
                  selectedIcon: item.selectedIcon != null
                      ? AppIcon.icon24(path: item.selectedIcon ?? item.icon)
                      : null,
                  icon: AppIcon.icon24(
                    path: item.icon,
                    color: item.selectedIcon == null && selectedIndex == index
                        ? context.color.onSecondaryContainer
                        : context.color.onSurfaceVariant,
                  ),
                  label: item.label,
                ))
            .toList());
  }

  factory BaseBottomBar.normal(
          {required int index,
          required List<BottomBarItem> icons,
          required Function(int index) onChanged}) =>
      BaseBottomBar(selectedIndex: index, icons: icons, onChanged: onChanged);
}
