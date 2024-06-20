import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';

class CommonModule extends Module {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return DefaultRoute.notFound(settings);
    }
  }

  @override
  Future inject(GetIt sl) async {
    await _setupCommon(sl);
    _setupUI(sl);
  }

  Future _setupCommon(GetIt sl) async {
    final prefs = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => AppSharedPreferences(prefs: prefs));
  }

  void _setupUI(GetIt sl) {
    sl.registerLazySingleton<AppLoadingOverlay>(() => AppLoadingOverlayImpl());
  }
}
