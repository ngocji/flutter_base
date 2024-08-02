import 'package:flutter_widget/flutter_widget.dart';

class AppLoading extends StatelessWidget {
  factory AppLoading.centerLoading({double height = 48}) =>
      AppLoading(height: height);

  const AppLoading({Key? key, this.height = 48}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: height,
        height: height,
        child: CircularProgressIndicator(
          color: context.color.onPrimaryContainer,
          backgroundColor: Colors.transparent,
          strokeWidth: 2,
        ),
      ),
    );
  }
}

Widget showLoading(bool isShowLoading) {
  if (isShowLoading) {
    return const AppLoading();
  }
  return const SizedBox();
}
