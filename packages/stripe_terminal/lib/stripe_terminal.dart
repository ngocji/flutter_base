import 'dart:async';
import 'package:flutter/services.dart';


class StripeTerminal {
  static const STRIP_TERMINAL_SDK = 'STRIP_TERMINAL_SDK_CHANNEL';

  static const INITIALIZE_STRIP_TERMINAL_SDK = 'INITIALIZE_STRIP_TERMINAL_SDK';

  static const MethodChannel _stripTerminalChannel =
  MethodChannel(STRIP_TERMINAL_SDK);

  StripeTerminal._privateConstructor() {
    _stripTerminalChannel.setMethodCallHandler((call) {
      return Future.value(null);
    });
  }

  static final _instance = StripeTerminal._privateConstructor();

  static StripeTerminal get instance => _instance;

  Future<void> initialize() async {
    await _stripTerminalChannel.invokeMethod<bool>(INITIALIZE_STRIP_TERMINAL_SDK);
  }

}
