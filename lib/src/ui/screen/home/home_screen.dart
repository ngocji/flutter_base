import 'package:flutter_widget/flutter_widget.dart';

import '../../../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(child: Center(
      child: Text(Localization.current.app_name),
    ));
  }
}
