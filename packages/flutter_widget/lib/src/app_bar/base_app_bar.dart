import 'package:flutter_widget/flutter_widget.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final String? title;
  final List<Widget>? actions;
  final double elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onLeadingPressed;
  final bool? centerTitle;

  const BaseAppBar({
    Key? key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.elevation = 0,
    this.shadowColor,
    this.surfaceTintColor,
    this.backgroundColor,
    this.foregroundColor,
    this.onLeadingPressed,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _leading(context),
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title ?? '',
        style: context.textTheme.titleLarge?.copyWith(
          color: context.color.onSurface,
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      backgroundColor: backgroundColor ?? context.color.surface,
      foregroundColor: foregroundColor,
    );
  }

  Widget? _leading(BuildContext context) {
    if (!automaticallyImplyLeading) {
      return null;
    }

    return leading != null
        ? GestureDetector(
            onTap: () {
              if (onLeadingPressed != null) {
                onLeadingPressed!();
              } else {
                Navigator.maybePop(context);
              }
            },
            child: leading)
        : IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: context.color.onSurface,
              size: 24,
            ),
            onPressed: () {
              if (onLeadingPressed != null) {
                onLeadingPressed!();
              } else {
                Navigator.maybePop(context);
              }
            },
          );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  factory BaseAppBar.onlyText(
      {String? title,
      bool? centerTitle = true,
      double elevation = 0,
      Color? shadowColor,
      Color? surfaceTintColor,
      Color? backgroundColor,
      Color? foregroundColor}) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      automaticallyImplyLeading: false,
    );
  }

  factory BaseAppBar.onlyBack(
      {String? title,
      bool? centerTitle = false,
      double elevation = 0,
      Color? shadowColor,
      Color? surfaceTintColor,
      Color? backgroundColor,
      Color? foregroundColor,
      VoidCallback? onBackPressed}) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      onLeadingPressed: onBackPressed,
      elevation: elevation,
    );
  }

  factory BaseAppBar.drawer(
      {String? title,
      dynamic menuIcon,
      double elevation = 0,
      Color? shadowColor,
      Color? surfaceTintColor,
      Color? backgroundColor,
      Color? foregroundColor,
      required VoidCallback? onMenuPressed}) {
    return BaseAppBar(
      title: title,
      leading: AppIcon.icon24(path: menuIcon ?? Icons.menu_rounded),
      centerTitle: true,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      onLeadingPressed: onMenuPressed,
      elevation: elevation,
    );
  }

  factory BaseAppBar.withTextMenu({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onBackPressed,
    required Map<String, VoidCallback> itemMenuWithAction,
  }) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      onLeadingPressed: onBackPressed,
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return itemMenuWithAction.entries.map((e) {
              return PopupMenuItem<String>(
                value: e.key,
                child: GestureDetector(
                  onTap: e.value,
                  child: Text(e.key),
                ),
              );
            }).toList();
          },
          icon: Icon(
            Icons.more_vert_rounded,
            color: context.color.onSurface,
            size: 24,
          ),
        )
      ],
    );
  }
}
