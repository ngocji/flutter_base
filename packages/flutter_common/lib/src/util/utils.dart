import 'package:flutter/widgets.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

void showDialogFail(
  BuildContext context,
  Exception error,
  VoidCallback? callback,
) {
  showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext mContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return AppDialog.popupFail(
        description: error.toString(),
        callback: () {
          callback?.call();
        },
      );
    },
  );
}

void showDialogConfirm(BuildContext context,
    {String? title,
    required String description,
    VoidCallback? yesCallback,
    VoidCallback? noCallback,
    String? btYesName,
    String? btNoName,
    bool cancelable = true,
    Widget? icon,
    String? iconPath,
    Color? iconColor}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "",
    pageBuilder: (BuildContext mContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return AppDialog.popupConfirm(
        title: title,
        description: description,
        yesCallback: yesCallback,
        noCallback: noCallback,
        btYesName: btYesName,
        btNoName: btNoName,
        cancelable: cancelable,
        icon: icon,
        iconPath: iconPath,
        iconColor: iconColor,
      );
    },
  );
}

void showDialogCustom(BuildContext context,
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
    Widget? content}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "",
    pageBuilder: (BuildContext mContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return AppDialog.popup(
        title: title,
        description: description,
        yesCallback: yesCallback,
        noCallback: noCallback,
        btYesName: btYesName,
        btNoName: btNoName,
        cancelable: cancelable,
        icon: icon,
        iconPath: iconPath,
        iconColor: iconColor,
        content: content,
      );
    },
  );
}
