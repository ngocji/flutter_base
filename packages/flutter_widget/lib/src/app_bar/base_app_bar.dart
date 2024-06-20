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
        style: context.textStyle.textMdBold.copyWith(
          color: context.color.white,
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      backgroundColor: backgroundColor ?? context.color.primaryColor,
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
        color: context.color.white,
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

  factory BaseAppBar.onlyBackButton({
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onBackPressed,
  }) {
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

  factory BaseAppBar.withHistoryButton({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onBackPressed,
    VoidCallback? onActionPressed,
  }) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      onBackPressed: onBackPressed,
      elevation: elevation,
      actions: [
        IconButton(
          icon: Icon(
            Icons.history_rounded,
            color: context.color.white,
            size: 24,
          ),
          onPressed: () {
            if (onActionPressed != null) {
              onActionPressed();
            }
          },
        )
      ],
    );
  }

  factory BaseAppBar.withSettingButton({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onSettingPress,
  }) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      leading: IconButton(
        icon: Icon(
          Icons.settings_outlined,
          color: context.color.white,
          size: 24,
        ),
        onPressed: () {
          if (onSettingPress != null) {
            onSettingPress();
          }
        },
      ),
    );
  }

  factory BaseAppBar.withNotifyAndMenuButton({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onNotifyPress,
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
      leading: IconButton(
        icon: Icon(
          Icons.settings_outlined,
          color: context.color.white,
          size: 24,
        ),
        onPressed: () {
          if (onNotifyPress != null) {
            onNotifyPress();
          }
        },
      ),
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
            color: context.color.white,
            size: 24,
          ),
        )
      ],
    );
  }

  factory BaseAppBar.withScanQrButton({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onScanPress,
  }) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      leading: IconButton(
        icon: Icon(
          Icons.qr_code_scanner_rounded,
          color: context.color.white,
          size: 24,
        ),
        onPressed: () {
          if (onScanPress != null) {
            onScanPress();
          }
        },
      ),
    );
  }

  factory BaseAppBar.withMessageAndGroupButton({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onMessagePress,
    VoidCallback? onGroupPress,
  }) {
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      leading: IconButton(
        icon: Icon(
          Icons.messenger_outline_rounded,
          color: context.color.white,
          size: 24,
        ),
        onPressed: () {
          if (onMessagePress != null) {
            onMessagePress();
          }
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.group_outlined,
            color: context.color.white,
            size: 24,
          ),
          onPressed: () {
            if (onMessagePress != null) {
              onMessagePress();
            }
          },
        ),
      ],
    );
  }

  factory BaseAppBar.withPagingSlide({
    required BuildContext context,
    String? title,
    bool? centerTitle = false,
    double elevation = 0,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onBackPress,
    VoidCallback? onPreviousPagePress,
    VoidCallback? onNextPagePress,
    bool? canPrevious = true,
    bool? canNext = true,
  }) {
    bool canNextPage = canNext ?? true;
    bool canPreviousPage = canPrevious ?? true;
    return BaseAppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      leading: IconButton(
        icon: Icon(
          Icons.messenger_outline_rounded,
          color: context.color.white,
          size: 24,
        ),
        onPressed: () {
          if (onBackPress != null) {
            onBackPress();
          }
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: canPreviousPage
                ? context.color.white
                : context.color.white.withOpacity(0.33),
            size: 24,
          ),
          onPressed: () {
            if (onPreviousPagePress != null && canPreviousPage) {
              onPreviousPagePress();
            }
          },
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
            color: canNextPage
                ? context.color.white
                : context.color.white.withOpacity(0.33),
            size: 24,
          ),
          onPressed: () {
            if (onNextPagePress != null && canNextPage) {
              onNextPagePress();
            }
          },
        ),
      ],
    );
  }
}
