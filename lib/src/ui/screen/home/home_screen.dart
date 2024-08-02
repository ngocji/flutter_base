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
  final PageController _pageController = PageController();
  int _index = 0;

  void _onPageChanged(int index) {
    setState(() {
      _index = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.onlyText(
        title: Localization.current.app_name,
        centerTitle: true,
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Text("$index"),
          );
        },
        onPageChanged: _onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BaseBottomBar.normal(
          index: _index,
          icons: [
            BottomBarItem(icon: Assets.icons.icClosePopup.path, label: "Home"),
            BottomBarItem(
                icon: Assets.icons.icClosePopup.path, label: "Favorite"),
          ],
          onChanged: (index) => {_onPageChanged(index)}),
    );
  }
}
