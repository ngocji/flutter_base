import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class AppDialog extends StatelessWidget {
  final String? iconPath;
  final Widget? icon;
  final Color? iconColor;
  final String? title;
  final String description;
  final String? btNoName;
  final String? btYesName;
  final bool showButtonClose;
  final bool showButtonBottom;
  final VoidCallback? callbackAction;
  final VoidCallback? callbackNoAction;
  final bool cancelable;
  final Widget? content;

  const AppDialog(
      {super.key,
      this.iconPath,
      this.btNoName,
      this.btYesName,
      this.icon,
      this.iconColor,
      this.showButtonClose = false,
      this.showButtonBottom = true,
      this.cancelable = true,
      this.title,
      this.content,
      required this.description,
      this.callbackNoAction,
      this.callbackAction});

  @override
  Widget build(BuildContext context) {
    final isAlignCenter = icon != null || iconPath != null;
    return GestureDetector(
        onTap: () {
          if (cancelable) {
            Navigator.maybePop(context);
          }
        },
        child: Dialog(
            backgroundColor: context.color.surfaceContainerHigh,
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: isAlignCenter
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) icon!,
                  if (iconPath != null && icon == null)
                    AppIcon.icon24(
                      path: iconPath!,
                      color: iconColor ?? context.color.secondary,
                    ),
                  if (icon != null || iconPath != null) Space.h16(),
                  if (title != null)
                    Text(title ?? '',
                        style: context.textTheme.headlineSmall
                            ?.copyWith(color: context.color.onSurface),
                        textAlign:
                            isAlignCenter ? TextAlign.center : TextAlign.start),
                  if (title != null) Space.h16(),
                  Text(
                    description,
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: context.color.onSurfaceVariant),
                  ),
                  if (content != null) Space.h24(),
                  if (content != null) content!,
                  if (showButtonBottom) Space.h24(),
                  if (showButtonBottom)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppButton.type(
                          type: AppButtonType.text,
                          label: btNoName ?? CommonLocalization.current.cancel,
                          onPressed: () {
                            Navigator.maybePop(context);
                            callbackNoAction?.call();
                          },
                        ),
                        if (btYesName != null) Space.w8(),
                        if (btYesName != null)
                          AppButton.type(
                            type: AppButtonType.text,
                            label: btYesName ?? '',
                            onPressed: () {
                              Navigator.maybePop(context);
                              callbackAction?.call();
                            },
                          )
                      ],
                    )
                ],
              ),
            )));
  }

  factory AppDialog.popupFail(
          {required String description, VoidCallback? callback}) =>
      AppDialog(
          callbackNoAction: callback,
          title: CommonLocalization.current.error,
          showButtonBottom: true,
          btNoName: CommonLocalization.current.ok,
          description: description,
          cancelable: false);

  factory AppDialog.popupConfirm(
          {String? title,
          required String description,
          VoidCallback? yesCallback,
          VoidCallback? noCallback,
          String? btYesName,
          String? btNoName,
          bool cancelable = true,
          Widget? icon,
          String? iconPath,
          Color? iconColor}) =>
      AppDialog(
        title: title ?? CommonLocalization.current.confirm,
        description: description,
        btYesName: btYesName ?? CommonLocalization.current.yes,
        btNoName: btNoName ?? CommonLocalization.current.cancel,
        cancelable: cancelable,
        callbackAction: yesCallback,
        callbackNoAction: noCallback,
        icon: icon,
        iconPath: iconPath,
        iconColor: iconColor,
      );

  factory AppDialog.popup(
          {String? title,
          required String description,
          VoidCallback? yesCallback,
          VoidCallback? noCallback,
          String? btYesName,
          String? btNoName,
          bool cancelable = true,
          Widget? icon,
          String? iconPath,
          Color? iconColor,
          Widget? content}) =>
      AppDialog(
        title: title,
        description: description,
        btYesName: btYesName,
        btNoName: btNoName,
        cancelable: cancelable,
        callbackAction: yesCallback,
        callbackNoAction: noCallback,
        icon: icon,
        iconPath: iconPath,
        iconColor: iconColor,
        content: content,
      );
}
