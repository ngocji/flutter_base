import 'package:flutter_common/src/router/router.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

import '../router/navigator_util.dart';
import '../router/page_not_found.dart';
import 'module.dart';

class ModuleManagement {
  final List<Module> _modules = [];

  void addModule(Module module) {
    _modules.add(module);
  }

  void addModules(List<Module> modules) {
    _modules.addAll(modules);
  }

  Future inject(GetIt sl) async {
    for (var module in _modules) {
      await module.inject(sl);
    }
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    for (var module in _modules) {
      final route = module.generateRoute(settings);
      if (route.settings.name != DefaultRoute.routeNotFound) {
        return route;
      }
    }
    return getPageRoute(const PageNotFoundScreen(), settings);
  }
}
