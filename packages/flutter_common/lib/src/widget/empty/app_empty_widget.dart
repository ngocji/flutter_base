import 'package:flutter_widget/flutter_widget.dart';

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.folder,
            size: 64,
            color: context.color.background,
          ),
          Space.h4(),
          Text(
            'Không có dữ liệu',
            style: context.textStyle.textMdRegular
                .copyWith(color: context.color.background),
          ),
        ],
      ),
    );
  }
}
