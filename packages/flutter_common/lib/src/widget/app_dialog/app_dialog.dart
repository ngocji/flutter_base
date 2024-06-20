import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';

class AppDialog extends StatelessWidget {
  final String? path;
  final Widget? icon;
  final String title;
  final String description;
  final String? btNoName;
  final String? btYesName;
  final bool showBtClose;
  final bool showButtonBottom;
  final VoidCallback? callback;
  final VoidCallback? callbackNoAction;
  final bool isMoreButton;

  const AppDialog(
      {super.key,
      this.path,
      this.btNoName,
      this.btYesName,
      this.icon,
      this.showBtClose = false,
      this.showButtonBottom = true,
      required this.title,
      required this.description,
      this.isMoreButton = false,
      this.callbackNoAction,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (showBtClose) {
          Navigator.maybePop(context);
        }
      },
      child: Dialog(
          backgroundColor: context.color.lightGray,
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
                    padding: const EdgeInsets.only(top: 12),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(246, 255, 249, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)),
                    ),
                    child: Center(
                      child: path != null
                          ? AppIcon.icon120(path: path!)
                          : const SizedBox(),
                    ),
                  ),
                  Space.h16(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: context.textStyle.textMdBold.copyWith(
                      color: context.color.primaryColor,
                    ),
                  ),
                  Space.h5(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: context.textStyle.textSmallMedium.copyWith(
                        color: context.color.background,
                      ),
                    ),
                  ),
                  Space.h30(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: showButtonBottom
                          ? Row(
                              children: [
                                isMoreButton
                                    ? Flexible(
                                        child: AppButton
                                            .primaryLarge(
                                                onPressed: () {
                                                  callbackNoAction?.call();
                                                },
                                                label: btNoName ?? 'No'))
                                    : const SizedBox.shrink(),
                                isMoreButton
                                    ? Space.w12()
                                    : const SizedBox.shrink(),
                                Flexible(
                                  child: AppButton.primaryLarge(
                                      onPressed: () {
                                        callback?.call();
                                        Navigator.maybePop(context);
                                      },
                                      label: btYesName ?? 'Yes'),
                                ),
                              ],
                            )
                          : const SizedBox.shrink()),
                  Space.h16(),
                ],
              ),
              showBtClose
                  ? Positioned(
                      top: -15,
                      right: -15,
                      child: Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
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
          path: '',
          title: 'Localization.current.lbl_error',
          showButtonBottom: false,
          showBtClose: true,
          description: description);
}
