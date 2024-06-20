

import 'package:flutter_core/flutter_core.dart';

import '../../flutter_widget.dart';
import '../loading/loading_widget.dart';

Widget showLoading(bool isShowLoading) {
  if (isShowLoading) {
    if (GetIt.instance.isRegistered<CommonLoadingWidget>()) {
      return GetIt.instance<CommonLoadingWidget>();
    }
    return const WidgetWithLoading();
  }
  return Container();
}
