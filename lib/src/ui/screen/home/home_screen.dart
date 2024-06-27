import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/data/domain/contact.dart';

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
    return Scaffold(
      appBar: SmallAppBar(title: "Title",),
      body: Container(child: Text(Localization.current.app_name)),
    );
  }
}
