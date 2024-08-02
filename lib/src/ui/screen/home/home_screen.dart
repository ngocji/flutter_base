import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar.onlyText(
          title: Localization.current.app_name,
          centerTitle: true,
        ),
        body: Center(
          child: AppButton.type(
            type: AppButtonType.primary,
            label: "Button",
            icon: Assets.icons.icArrowDown.path,
            iconGravity: AppButtonIconGravity.textStart,
            onPressed: () {
              showDialogConfirm(context, description: "Aadkjsfasdf" ,
              iconPath: Assets.icons.icClosePopup.path);
            },
          ),
        ));
  }
}
