import 'package:alice/alice.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_network/flutter_network.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/data/PrimaryDatabase.dart';
import 'package:showslinger/src/ui/screen/home/home_screen.dart';
import 'package:showslinger/src/ui/screen/splash/splash_screen.dart';

import 'data/network/app_network.dart';

class AppModule extends Module {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return getPageRoute(const SplashScreen(), settings);

      case HomeScreen.routeName:
        return getPageRoute(const HomeScreen(), settings);
      default:
        return DefaultRoute.notFound(settings);
    }
  }

  @override
  Future inject(GetIt sl) async {
    _setupNetwork(sl);
    _setupDatabase(sl);
    _setupDebugMode(sl);
  }

  void _setupNetwork(GetIt sl) {
    sl.registerLazySingleton<NetworkEnv>(() => AppNetworkEnv());
    sl.registerLazySingleton<Network>(() => Network<AppNetworkConfig>());
    sl<Network>().init();

    Env env = sl<Network>().env;
    String baseUrl = (sl<Network>().network as AppNetworkConfig).apiUrl;
    debugPrint('env= $env baseUrl= $baseUrl');

    final networkConfig = sl<Network>().network as AppNetworkConfig;
    final dioOptions = BaseOptions(
      baseUrl: networkConfig.apiUrl,
      connectTimeout: const Duration(seconds: 120),
      receiveTimeout: const Duration(seconds: 120),
      sendTimeout: const Duration(seconds: 120),
    );
    sl.registerLazySingleton<Dio>(() => Dio(dioOptions));
    sl<Dio>().interceptors.addAll([
      CurlInterceptor(),
      LogInterceptor(requestBody: true, responseBody: true),
      HandleErrorInterceptor(),
    ]);
  }

  void _setupDatabase(GetIt sl) {
    sl.registerLazySingleton<PrimaryDatabase>(() => PrimaryDatabase());
  }

  void _setupDebugMode(GetIt sl) {
    if (kDebugMode) {
      sl.registerLazySingleton(() => Alice(
            showNotification: false,
            showInspectorOnShake: false,
          ));
      sl<Dio>().interceptors.add(sl<Alice>().getDioInterceptor());
      sl<Alice>().setNavigatorKey(sl<NavigationService>().navigatorKey);
    }
  }
}
