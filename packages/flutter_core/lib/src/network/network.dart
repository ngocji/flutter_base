import 'package:flutter_core/src/network/network_config.dart';
import 'package:flutter_core/src/network/network_env.dart';

class Network<T extends NetworkConfig> {
  Env _env = Env.dev;

  Env get env => _env;

  T get network => env.network();

  void init() {
    const String environment = String.fromEnvironment('environment');
    _env = Env.fromValue(environment);
  }
}
