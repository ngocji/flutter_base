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