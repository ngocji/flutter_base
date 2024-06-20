import 'package:flutter_widget/flutter_widget.dart';

class AppScaffold extends StatelessWidget {
  final String? path;
  final Widget? background;
  final String backButton;
  final String? package;
  final double? width;
  final double? height;
  final VoidCallback? onClick;

  const AppScaffold(
      {super.key, this.path,
      required this.backButton,
      this.background,
      this.width,
      this.height,
      this.onClick,
      this.package});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          background ?? AppIcon(
            path: path ?? '',
            width: width,
            height: height,
          ),
          Positioned(
              top: 45,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  onClick?.call();
                },
                child: AppIcon(
                  path: backButton,
                  width: 32,
                  height: 32,
                ),
              )),
          Positioned(
            bottom: 0,
            left: 12,
            right: 12,
            child: Container(
              height: 20,
              width: width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: context.color.lightGray,
                  ),
                  color: context.color.lightGray,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}
