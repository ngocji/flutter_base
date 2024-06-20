import 'package:flutter/material.dart';

import '../flutter_core.dart';

class CoreModule extends Module {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return DefaultRoute.notFound(settings);
    }
  }

  @override
  Future inject(GetIt sl) async {
    await _setupCore(sl);
  }

  Future _setupCore(GetIt sl) async {
    final prefs = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => AppSharedPreferences(prefs: prefs));
  }
}
