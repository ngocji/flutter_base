import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'stripe_terminal_platform_interface.dart';

class MethodChannelStripeTerminal extends StripeTerminalPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('stripe_terminal');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

}
