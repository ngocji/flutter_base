import 'package:flutter_core/flutter_core.dart';

import '../../flutter_widget.dart';

class NavigationBarDrawerGroup {
  final String? label;
  final List<NavigationBarDrawerItem> items;

  NavigationBarDrawerGroup({this.label, required this.items});
}

class NavigationBarDrawerItem {
  final dynamic icon;
  final String label;
  final VoidCallback? callback;
  final int index;

  NavigationBarDrawerItem(
      {this.icon, required this.label, this.callback, this.index = -1});
}

class BaseNavigationBarDrawer extends StatelessWidget {
  final int selectedIndex;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final List<NavigationBarDrawerGroup> groups;
  final Color? iconColor;
  final Color? textColor;
  final Color? iconSelectedColor;
  final Color? textSelectedColor;
  final double? elevation;
  final Widget? header;
  final bool showDivider;

  const BaseNavigationBarDrawer(
      {super.key,
      required this.selectedIndex,
      this.backgroundColor,
      required this.groups,
      this.iconColor,
      this.iconSelectedColor,
      this.textColor,
      this.textSelectedColor,
      this.elevation,
      this.indicatorColor,
      this.header,
      this.showDivider = true});

  void _onDestinationSelected(int index) {
    Future.sync(() {
      for (var group in groups) {
        var item = group.items.firstWhere((item) => item.index == index);
        item.callback?.call();
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[if (header != null) DrawerHeader(child: header)];
    groups.forEachIndexed((group, index) {
      if (group.label != null) {
        widgets.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
            child: Text(group.label!,
                style: context.textTheme.titleSmall
                    ?.copyWith(color: context.color.onSurfaceVariant))));
      }

      if (group.items.isNotEmpty) {
        group.items.forEachIndexed((item, index) {
          widgets.add(NavigationDrawerDestination(
              icon: AppIcon.icon24(
                path: item.icon,
                color: item.index == selectedIndex
                    ? iconSelectedColor ?? context.color.onSecondaryContainer
                    : iconColor ?? context.color.onSurfaceVariant,
              ),
              label: Text(item.label,
                  style: context.textTheme.labelLarge?.copyWith(
                      color: item.index == selectedIndex
                          ? textSelectedColor ??
                              context.color.onSecondaryContainer
                          : textColor ?? context.color.onSurfaceVariant))));
        });

        if (showDivider && index < groups.length - 1) {
          widgets.add(Divider(color: context.color.outlineVariant));
        }
      }
    });

    return NavigationDrawer(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor ?? context.color.surfaceContainer,
        elevation: elevation,
        onDestinationSelected: (index) {
          _onDestinationSelected(index);
        },
        indicatorColor: indicatorColor ?? context.color.secondaryContainer,
        children: widgets);
  }
}
