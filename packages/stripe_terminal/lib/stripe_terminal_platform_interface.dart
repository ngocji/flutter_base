import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'stripe_terminal_method_channel.dart';

abstract class StripeTerminalPlatform extends PlatformInterface {
  StripeTerminalPlatform() : super(token: _token);

  static final Object _token = Object();

  static StripeTerminalPlatform _instance = MethodChannelStripeTerminal();

  static StripeTerminalPlatform get instance => _instance;

  static set instance(StripeTerminalPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
