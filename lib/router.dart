import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return GetIt.instance<ModuleManagement>().generateRoute(settings);
}
