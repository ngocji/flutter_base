import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  final Widget child;
  final double? height;

  const BottomSheetWidget({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        padding: EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .padding
            .bottom),
        constraints: BoxConstraints(
            maxHeight: height ?? MediaQuery
                .sizeOf(context)
                .height * 3 / 4),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: context.color.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Space.h12(),
            AppIcon(path: Assets.icons.icBottomSheet.path),
            Space.h12(),
            Expanded(child: child),
          ],
        ),
      ),
    ]);
  }
}

class BottomSheetHeaderWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final bool showHeader;
  final VoidCallback? callback;

  const BottomSheetHeaderWrapper({
    Key? key,
    this.title = '',
    this.callback,
    required this.child,
    this.showHeader = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Space.h8(),
        showHeader ? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Space.w36(),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: context.textStyle.textMdBold.copyWith(
                  color: context.color.black01,
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
              {
                if (callback != null ) {
                  callback?.call()
                } else
                  {
                    Navigator.pop(context),
                  }
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 24,
              ),
            ),
            Space.w12(),
          ],
        ): const SizedBox.shrink(),
        showHeader ?Space.h16(): const SizedBox.shrink(),
        showHeader ? Divider(thickness: 1, height: 1, color: context.color.borderGray.withOpacity(0.2),): const SizedBox.shrink(),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}

Future<T?> showCustomBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  double? height,
  bool isDismissible = true,
  bool enableDrag = true,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isDismissible: isDismissible,
    isScrollControlled: true,
    enableDrag: enableDrag,
    builder: (BuildContext bc) {
      return Padding(
        padding: MediaQuery
            .of(bc)
            .viewInsets,
        child: BottomSheetWidget(
          height: height,
          child: child,
        ),
      );
    },
  );
}

Future<T?> showCustomBottomSheetWithIcon<T>({
  required BuildContext context,
  required Widget child,
  double? height,
  final VoidCallback? callback,
  required String title,
  bool showHeader = true,
  bool isDismissible = true,
  bool enableDrag = true,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isDismissible: isDismissible,
    isScrollControlled: true,
    enableDrag: enableDrag,
    builder: (BuildContext bc) {
      return Padding(
        padding: MediaQuery
            .of(bc)
            .viewInsets,
        child: BottomSheetWidget(
          height: height,
          child: BottomSheetHeaderWrapper(title: title, child: child,
              callback: callback, showHeader: showHeader),
        ),
      );
    },
  );
}
