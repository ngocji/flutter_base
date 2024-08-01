import 'package:flutter_widget/flutter_widget.dart';

class AppInputDecoration {
  static BoxDecoration defaultInputDecoration(BuildContext context,
      {required bool error, required bool hasFocus, bool disabled = false}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
          color: error
              ? context.color.errorContainer
              : hasFocus
                  ? context.color.primary
                  : context.color.outline),
      color:
          disabled ? context.color.surfaceContainerLowest : Colors.transparent,
      boxShadow: const [
        BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 2,
          offset: Offset(0, 2),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 2,
          offset: Offset(0, 0),
          spreadRadius: 0,
        ),
      ],
    );
  }
}
