import 'package:flutter_widget/flutter_widget.dart';

class AppListTile extends StatelessWidget {
  final String? prefixIcon;
  final String? suffixIcon;
  final Color? colorPrefixIcon;
  final Color? colorIconSuffix;
  final String? title;
  final TextStyle? titleStyle;
  final bool? isMultiLine;
  final bool? centerAlign;
  final IconType iconType;
  final EdgeInsetsGeometry? paddingPrefix;
  final EdgeInsetsGeometry? paddingSuffix;
  final String? description;
  final TextStyle? descriptionStyle;
  final Function(String)? onTap;

  const AppListTile(
      {super.key,
      this.prefixIcon,
      this.suffixIcon,
      this.colorPrefixIcon,
      this.isMultiLine = true,
      this.centerAlign = false,
      this.iconType = IconType.small,
      this.title,
      this.titleStyle,
      this.paddingPrefix,
      this.paddingSuffix,
      this.descriptionStyle,
      this.description,
      this.onTap,
      this.colorIconSuffix});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
          centerAlign! ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        prefixIcon != null
            ? Padding(
                padding: paddingPrefix ?? EdgeInsets.zero,
                child: _buildIconPrefix(iconType),
              )
            : const SizedBox.shrink(),
        isMultiLine!
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  title != null
                      ? _buildTitle(context)
                      : const SizedBox.shrink(),
                  (description != null && description!.isNotEmpty)
                      ? _showDescription(context)
                      : const SizedBox.shrink(),
                ],
              )
            : Text(
                title ?? '',
                style: titleStyle,
              ),
        suffixIcon != null
            ? Padding(
                padding: paddingSuffix ?? EdgeInsets.zero,
                child: _buildSuffixIcon(context))
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget _showDescription(BuildContext context) {
    return Text(
      description ?? '',
      style: descriptionStyle ??
          context.textStyle.textMdMedium
              .copyWith(color: context.color.onSurface, fontSize: 14),
    );
  }

  factory AppListTile.header(
          {required String title, required String suffixIcon}) =>
      AppListTile(
        title: title,
        isMultiLine: false,
        centerAlign: true,
        suffixIcon: suffixIcon,
      );

  factory AppListTile.description(
          {required String description,
          TextStyle? descriptionStyle,
          required String prefix}) =>
      AppListTile(
        paddingPrefix: const EdgeInsets.fromLTRB(0, 3, 8, 0),
        description: description,
        prefixIcon: prefix,
      );

  factory AppListTile.descriptionAlignCenter(
          {required String description,
          TextStyle? descriptionStyle,
          required String prefix}) =>
      AppListTile(
        paddingPrefix: const EdgeInsets.fromLTRB(0, 3, 8, 0),
        description: description,
        prefixIcon: prefix,
        centerAlign: true,
      );

  factory AppListTile.title(
          {required BuildContext context,
          required String title,
          required String description,
          required String prefix}) =>
      AppListTile(
        paddingPrefix: const EdgeInsets.fromLTRB(0, 3, 8, 0),
        title: title,
        titleStyle: context.textStyle.textMdBold
            .copyWith(fontSize: 24, color: context.color.primary),
        description: description,
        descriptionStyle: context.textStyle.textSmallRegular
            .copyWith(fontSize: 14, color: context.color.primary),
        prefixIcon: prefix,
        colorPrefixIcon: context.color.primary,
        iconType: IconType.small,
        centerAlign: true,
      );

  factory AppListTile.dropdown(
          {required String title, required String suffixIcon}) =>
      AppListTile(
        paddingSuffix: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        title: title,
        isMultiLine: false,
        suffixIcon: suffixIcon,
      );

  factory AppListTile.button(
          {required String title,
          TextStyle? titleStyle,
          required String prefix,
          String? suffixIcon,
          IconType? iconType,
          Function(String)? onTap}) =>
      AppListTile(
        paddingPrefix: const EdgeInsets.fromLTRB(0, 3, 8, 0),
        title: title,
        iconType: iconType ?? IconType.medium,
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
        centerAlign: true,
        onTap: onTap,
      );

  Widget _buildIconPrefix(IconType type) {
    switch (type) {
      case IconType.xsmall:
        return AppIcon.icon16(
          path: prefixIcon ?? '',
          color: colorPrefixIcon,
        );
      case IconType.small:
        return SizedBox(
          width: 14,
          height: 22,
          child: AppIcon.icon24(
            path: prefixIcon ?? '',
            color: colorPrefixIcon,
          ),
        );
      case IconType.medium:
        return AppIcon.icon32(
          path: prefixIcon ?? '',
          color: colorPrefixIcon,
        );
      case IconType.large:
        return AppIcon.icon56(
          path: prefixIcon ?? '',
          color: colorPrefixIcon,
        );
    }
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      maxLines: 2,
      title ?? '',
      style: titleStyle ??
          context.textStyle.textMdMedium
              .copyWith(color: context.color.onSurface, fontSize: 14),
    );
  }

  Widget _buildSuffixIcon(BuildContext context) {
    return AppIcon.icon24(
      path: suffixIcon ?? '',
    );
  }
}

enum IconType { xsmall, small, medium, large }
