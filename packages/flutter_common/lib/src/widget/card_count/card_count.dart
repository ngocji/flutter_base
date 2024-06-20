import 'package:flutter_widget/flutter_widget.dart';

class CardCount extends StatelessWidget {
  final Color colorTitle;
  final String number;
  final String unit;

  const CardCount(
      {super.key,
      required this.colorTitle,
      required this.number,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.backgroundField,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: context.textStyle.textLgBold.copyWith(
              color: colorTitle,
              fontSize: 32,
            ),
          ),
          Text(
            unit,
            style: context.textStyle.textMdMedium.copyWith(
              color: context.color.colorText01,
              fontSize: 14,
            ),
          ),
          Space.h10(),
        ],
      ),
    );
  }
}
