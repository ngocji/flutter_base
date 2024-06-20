import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_network/flutter_network.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/home/home_screen.dart';
import 'package:showslinger/src/ui/screen/splash/splash_screen.dart';

import 'network/app_network.dart';

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
    _registerNetworkService(sl);
  }



  void _setupNetwork(GetIt sl) {
    sl.registerLazySingleton<NetworkEnv>(() => AppNetworkEnv());
    sl.registerLazySingleton<Network>(() => Network<AppNetworkConfig>());
    sl<Network>().init();

    Env env = sl<Network>().env;
    String baseUrl = (sl<Network>().network as AppNetworkConfig).apiUrl;
    debugPrint('env= $env baseUrl= $baseUrl');
  }

  void _registerNetworkService(GetIt sl) {
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
}
