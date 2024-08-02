import '../../flutter_widget.dart';

class BottomBarItem {
  final String icon;
  final String label;

  BottomBarItem({required this.icon, required this.label});
}

class BaseBottomBar extends StatelessWidget {
  final int index;
  final Color? backgroundColor;
  final List<BottomBarItem> icons;
  final Color? iconColor;
  final bool showLabel;
  final Function(int index) onChanged;

  const BaseBottomBar(
      {super.key,
      required this.index,
      this.backgroundColor,
      required this.icons,
      this.iconColor,
      this.showLabel = true,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: backgroundColor ?? context.color.surfaceContainer,
      currentIndex: index,
      onTap: (index) {
        onChanged(index);
      },
      showSelectedLabels: showLabel,
      showUnselectedLabels: showLabel,
      items: icons.map((icon) {
        return BottomNavigationBarItem(
          icon: AppIcon.icon24(path: icon.icon),
          label: icon.label, // Add label if needed
        );
      }).toList(),
    );
  }

  factory BaseBottomBar.normal(
          {required int index,
          required List<BottomBarItem> icons,
          required Function(int index) onChanged}) =>
      BaseBottomBar(index: index, icons: icons, onChanged: onChanged);
}
