import 'package:flutter_core/flutter_core.dart';

class AppNetworkConfig extends NetworkConfig {
  final String apiUrl;

  AppNetworkConfig({
    required this.apiUrl,
  });
}

class AppNetworkEnv extends NetworkEnv<AppNetworkConfig> {
  @override
  AppNetworkConfig get uatConfig => devConfig;

  @override
  AppNetworkConfig get devConfig => AppNetworkConfig(
        apiUrl: '',
      );

  @override
  AppNetworkConfig get stagingConfig => devConfig;

  @override
  AppNetworkConfig get prodConfig => devConfig;
}
