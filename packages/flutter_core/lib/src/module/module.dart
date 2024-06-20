import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

abstract class Module {
  Future inject(GetIt sl);

  Route<dynamic> generateRoute(RouteSettings settings);
}
