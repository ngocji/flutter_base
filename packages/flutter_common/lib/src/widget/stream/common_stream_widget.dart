import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class CommonStreamWidget<T> extends BaseStreamWidget<T> {
  CommonStreamWidget(
      {required super.stream,
      required super.builder,
      super.loadingWidget,
      super.errorWidget,
      super.emptyWidget});

  factory CommonStreamWidget.simple({
    required Stream<T> stream,
    required AsyncWidgetBuilder<T> builder,
  }) =>
      CommonStreamWidget(
        stream: stream,
        builder: builder,
        loadingWidget: showLoading(true),
        emptyWidget: AppEmptyWidget(
          icon: Assets.icons.icHistory
        ),
      );
}
