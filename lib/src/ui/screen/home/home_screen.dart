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
  int _drawerIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onPageChanged(int index) {
    setState(() {
      _index = index;
      _drawerIndex = index;
      _pageController.jumpToPage(index);
      _scaffoldKey.currentState?.closeDrawer();
    });
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  List<BottomBarItem> _bottomBarItems() {
    return [
      BottomBarItem(
          icon: Icons.home_outlined, label: Localization.current.home),
      BottomBarItem(
          icon: Icons.favorite_outline_rounded,
          label: Localization.current.favorite),
    ];
  }

  List<NavigationBarDrawerGroup> _drawerItems() {
    return [
      NavigationBarDrawerGroup(label: Localization.current.app_name, items: [
        NavigationBarDrawerItem(
            label: Localization.current.home,
            icon: Icons.home_outlined,
            index: 0,
            callback: () {
              _onPageChanged(0);
            }),
        NavigationBarDrawerItem(
            label: Localization.current.favorite,
            icon: Icons.favorite_outline_rounded,
            index: 1,
            callback: () {
              _onPageChanged(1);
            }),
        NavigationBarDrawerItem(
            label: Localization.current.settings,
            icon: Icons.settings_outlined,
            callback: () {
              // todo goto settings
            })
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: BaseAppBar.drawer(
        title: Localization.current.app_name,
        onMenuPressed: () {
          _openDrawer();
        },
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: AppIconButton.outline(
              icon: Icons.add,
              onPressed: () {},
            ),
          );
        },
        onPageChanged: _onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BaseBottomBar.normal(
          index: _index,
          icons: _bottomBarItems(),
          onChanged: (index) => {_onPageChanged(index)}),
      drawer: BaseNavigationBarDrawer(
        selectedIndex: _drawerIndex,
        groups: _drawerItems(),
      ),
    );
  }
}
