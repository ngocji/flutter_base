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
  final VoidCallback? onBackPressed;
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
    this.onBackPressed,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ?? _leading(context),
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title ?? '',
        style: context.textStyle.textLgSemiBold.copyWith(
          color: context.color.onPrimary,
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      backgroundColor: backgroundColor ?? context.color.primary,
      foregroundColor: foregroundColor,
    );
  }

  Widget? _leading(BuildContext context) {
    if (!automaticallyImplyLeading) {
      return null;
    }

    return IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
        color: context.color.onPrimary,
        size: 24,
      ),
      onPressed: () {
        if (onBackPressed != null) {
          onBackPressed!();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  factory BaseAppBar.onlyText({
    String? title,
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

  factory BaseAppBar.onlyBack({
    String? title,
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
      onBackPressed: onBackPressed,
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
      onBackPressed: onBackPressed,
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
            color: context.color.onPrimary,
            size: 24,
          ),
        )
      ],
    );
  }
}
