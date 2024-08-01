import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

Widget buildLoading(bool show, {Color? bgColor}) {
  if (show) {
    return GetIt.instance<AppLoadingOverlay>().buildLoading(
      bgColor: bgColor,
    );
  }

  return const SizedBox();
}

abstract class AppLoadingOverlay {
  Widget buildLoading({Color? bgColor});
}

class AppLoadingOverlayImpl extends AppLoadingOverlay {
  @override
  Widget buildLoading({Color? bgColor}) {
    return _AppLoadingOverlay(
      backgroundColor: bgColor,
    );
  }
}

class _AppLoadingOverlay extends StatelessWidget {
  const _AppLoadingOverlay({
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? context.color.scrim,
      body: const AppLoading(height: 48),
    );
  }
}

bool _isLoading = false;

Future<bool?> showLoadingOverlay(BuildContext context,
    {bool dismissAble = true}) async {
  if (_isLoading) return true;
  _isLoading = true;
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: false,
    builder: (c) {
      return PopScope(
        canPop: dismissAble,
        onPopInvoked:(o) {},
        child: buildLoading(
          true,
          bgColor: Colors.transparent,
        ),
      );
    },
  );
}

void dismissLoadingOverlay(BuildContext context) {
  if (!_isLoading) return;
  _isLoading = false;
  if (Navigator.of(context).canPop()) {
    Navigator.pop(context);
  }
}
