import 'package:flutter_widget/flutter_widget.dart';

class SmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? leadingIcon;
  final String? title;
  final Widget? widgetTitle;
  final Gradient? gradient;
  final Color? titleColor;
  final VoidCallback? onBackPressed;

  const SmallAppBar({
    Key? key,
    this.leadingIcon,
    this.title,
    this.gradient,
    this.titleColor,
    this.widgetTitle,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(gradient: gradient),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onBackPressed != null) {
                onBackPressed!.call();
              } else {
                Navigator.maybePop(context);
              }
            },
            child: leadingIcon != null
                ? AppIcon.icon24(path: leadingIcon!)
                : const SizedBox.shrink(),
          ),
          Space.w8(),
          Expanded(
            child: widgetTitle ??
                Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  style: context.textStyle.textMdBold.copyWith(
                    color: titleColor ?? context.color.onPrimary,
                  ),
                ),
          ),
          Space.w16(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
