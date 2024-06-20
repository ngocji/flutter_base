
import 'package:flutter_network/flutter_network.dart';

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
