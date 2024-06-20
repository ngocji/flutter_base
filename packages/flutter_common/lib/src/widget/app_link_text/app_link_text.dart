import 'package:flutter_widget/flutter_widget.dart';

class AppLinkText extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const AppLinkText({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        label,
        style: context.textStyle.textMdMedium.copyWith(
          color: context.color.blackGray,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
