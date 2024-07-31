import 'package:flutter_widget/flutter_widget.dart';

class StreamWidget<T> extends StatelessWidget {
  final Stream<T> stream;
  final AsyncWidgetBuilder<T> builder;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final Widget? emptyWidget;

  const StreamWidget(
      {Key? key,
      required this.stream,
      required this.builder,
      this.loadingWidget,
      this.errorWidget,
      this.emptyWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      key: key,
      stream: stream,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return loadingWidget ?? const SizedBox();
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              return errorWidget ?? const SizedBox();
            } else if (snapshot.hasData) {
              return builder(context, snapshot);
            } else {
              return emptyWidget ?? const SizedBox();
            }
        }
      },
    );
  }
}
