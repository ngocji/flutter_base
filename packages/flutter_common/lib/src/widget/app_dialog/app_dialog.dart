import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class AppDialog extends StatelessWidget {
  final String? iconPath;
  final Widget? icon;
  final String? title;
  final String description;
  final String? btNoName;
  final String? btYesName;
  final bool showButtonClose;
  final bool showButtonBottom;
  final VoidCallback? callback;
  final VoidCallback? callbackNoAction;
  final bool cancelable;

  const AppDialog(
      {super.key,
      this.iconPath,
      this.btNoName,
      this.btYesName,
      this.icon,
      this.showButtonClose = false,
      this.showButtonBottom = true,
      this.cancelable = true,
      this.title,
      required this.description,
      this.callbackNoAction,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (cancelable) {
          Navigator.maybePop(context);
        }
      },
      child: Dialog(
          backgroundColor: context.color.surface,
          elevation: 0.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Center(
                      child: iconPath != null
                          ? AppIcon.icon64(path: iconPath!)
                          : const SizedBox(),
                    ),
                  ),
                  if (title != null)
                    Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: context.textStyle.textMdBold.copyWith(
                        color: context.color.primary,
                      ),
                    ),
                  Space.h5(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: context.textStyle.textSmallMedium.copyWith(
                        color: context.color.onSurface,
                      ),
                    ),
                  ),
                  Space.h16(),
                  if (showButtonBottom) Space.h16(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: showButtonBottom
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                btNoName != null
                                    ? AppButton.text(
                                        label: btNoName!,
                                        textStyle: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: context
                                                    .color.onSurfaceVariant),
                                        onPressed: () {
                                          Navigator.maybePop(context);
                                        },
                                      )
                                    : const SizedBox.shrink(),
                                btNoName != null
                                    ? Space.w20()
                                    : const SizedBox.shrink(),
                                AppButton.primary(
                                  label: btYesName ??
                                      CommonLocalization.current.ok,
                                  isFillWidth: false,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  onPressed: () {
                                    Navigator.maybePop(context);
                                  },
                                ),
                              ],
                            )
                          : const SizedBox.shrink()),
                  if (showButtonBottom) Space.h16(),
                ],
              ),
              showButtonClose
                  ? Positioned(
                      top: -10,
                      right: -10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.maybePop(context);
                        },
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                              color: context.color.surface,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.close,
                            color: context.color.onSurfaceVariant,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )),
    );
  }

  factory AppDialog.popupFail(
          {required String description, VoidCallback? callback}) =>
      AppDialog(
          callback: callback,
          title: CommonLocalization.current.error,
          showButtonBottom: true,
          btYesName: CommonLocalization.current.ok,
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
          String? icon}) =>
      AppDialog(
        title: title ?? CommonLocalization.current.confirm,
        description: description,
        btYesName: btYesName ?? CommonLocalization.current.yes,
        btNoName: btNoName ?? CommonLocalization.current.cancel,
        cancelable: cancelable,
        callback: yesCallback,
        callbackNoAction: noCallback,
        iconPath: icon,
      );

  factory AppDialog.popup(
          {String? title,
          required String description,
          VoidCallback? yesCallback,
          VoidCallback? noCallback,
          String? btYesName,
          String? btNoName,
          bool cancelable = true,
          String? icon}) =>
      AppDialog(
        title: title,
        description: description,
        btYesName: btYesName,
        btNoName: btNoName,
        cancelable: cancelable,
        callback: yesCallback,
        callbackNoAction: noCallback,
        iconPath: icon,
      );
}
