import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

abstract class Module {
  Future inject(GetIt sl);

  Route<dynamic> generateRoute(RouteSettings settings);
}
