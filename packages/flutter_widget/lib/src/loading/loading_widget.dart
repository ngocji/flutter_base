import 'package:flutter_widget/flutter_widget.dart';
import 'package:lottie/lottie.dart';

abstract class CommonLoadingWidget extends StatefulWidget {
  const CommonLoadingWidget({Key? key}) : super(key: key);
}

abstract class CommonLoadingWidgetState<T extends CommonLoadingWidget>
    extends State<CommonLoadingWidget> {}

class LottieLoadingWidget extends StatefulWidget {
  final String? lottieFilePath;
  final Size? size;
  final bool repeat;

  const LottieLoadingWidget(
      {Key? key, this.lottieFilePath, this.size, this.repeat = true})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LottieLoadingWidgetState();
  }
}

class _LottieLoadingWidgetState extends State<LottieLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.lottieFilePath != null
        ? LottieBuilder.asset(
            widget.lottieFilePath!,
            width: widget.size?.width,
            height: widget.size?.height,
            repeat: widget.repeat,
          )
        : const CircularProgressIndicator();
  }
}
