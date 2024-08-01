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

  const AppDialog(
      {super.key,
      this.iconPath,
      this.btNoName,
      this.btYesName,
      this.icon,
      this.showButtonClose = false,
      this.showButtonBottom = true,
      this.title,
      required this.description,
      this.callbackNoAction,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (showButtonClose) {
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
                              children: [
                                btNoName != null
                                    ? Flexible(child: SizedBox())
                                    : const SizedBox.shrink(),
                                btNoName != null
                                    ? Space.w12()
                                    : const SizedBox.shrink(),
                                Flexible(
                                  child: SizedBox(),
                                ),
                              ],
                            )
                          : const SizedBox.shrink()),
                  if (showButtonBottom) Space.h16(),
                ],
              ),
              showButtonClose
                  ? Positioned(
                      top: -15,
                      right: -15,
                      child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: Icon(
                          Icons.close,
                          color: context.color.onSurfaceVariant,
                          size: 20,
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
          iconPath: '',
          title: 'Localization.current.lbl_error',
          showButtonBottom: false,
          showButtonClose: true,
          description: description);
}
