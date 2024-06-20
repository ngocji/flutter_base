import 'package:flutter/material.dart';

abstract class CommonLoadingWidget extends StatefulWidget {
  const CommonLoadingWidget({Key? key}) : super(key: key);
}

abstract class CommonLoadingWidgetState<T extends CommonLoadingWidget>
    extends State<CommonLoadingWidget> {}

class WidgetWithLoading extends StatefulWidget {
  final String? lottieFilePath;
  final Size? size;

  const WidgetWithLoading({Key? key, this.lottieFilePath, this.size})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetWithLoadingState();
  }
}

class _WidgetWithLoadingState extends State<WidgetWithLoading> {
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
