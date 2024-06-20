import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

class AppDialogWidget extends StatelessWidget {
  final String? title;
  final String? message;
  final String? icon;
  final String? activeButton;
  final String? cancelButton;

  const AppDialogWidget({
    super.key,
    this.title,
    this.message,
    this.icon,
    this.activeButton,
    this.cancelButton,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: context.color.lightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Space.h8(),
                if (!title.isNullOrEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: context.textStyle.textMdSemiBold.copyWith(
                        color: context.color.background,
                      ),
                    ),
                  ),
                if (!message.isNullOrEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      message!,
                      textAlign: TextAlign.center,
                      style: context.textStyle.textSmallMedium.copyWith(
                        color: context.color.background,
                      ),
                    ),
                  ),
                Space.h20(),
                if (!activeButton.isNullOrEmpty || !cancelButton.isNullOrEmpty)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (!cancelButton.isNullOrEmpty)
                        Expanded(
                          child: AppButton.secondaryLarge(
                            label: cancelButton!,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      if (!cancelButton.isNullOrEmpty &&
                          !activeButton.isNullOrEmpty)
                        Space.w12(),
                      if (!activeButton.isNullOrEmpty)
                        Expanded(
                          child: AppButton.primaryLarge(
                            label: activeButton!,
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          ),
                        ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
