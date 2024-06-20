import 'package:flutter_core/flutter_core.dart';

import '../../flutter_network.dart';

enum Env {
  dev,
  uat,
  staging,
  prod;

  dynamic network() {
    switch (this) {
      case Env.dev:
        return GetIt.instance<NetworkEnv>().devConfig;
      case Env.uat:
        return GetIt.instance<NetworkEnv>().uatConfig;
      case Env.staging:
        return GetIt.instance<NetworkEnv>().stagingConfig;
      case Env.prod:
        return GetIt.instance<NetworkEnv>().prodConfig;
      default:
        return GetIt.instance<NetworkEnv>().devConfig;
    }
  }

  static Env fromValue(String? env) {
    switch (env) {
      case 'dev':
        return Env.dev;
      case 'uat':
        return Env.uat;
      case 'staging':
        return Env.staging;
      case 'prod':
        return Env.prod;
      default:
        return Env.dev;
    }
  }
}

abstract class NetworkEnv<T extends NetworkConfig> {
  T get devConfig;

  T get uatConfig;

  T get stagingConfig;

  T get prodConfig;
}
