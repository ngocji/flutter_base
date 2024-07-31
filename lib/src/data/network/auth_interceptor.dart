import 'package:flutter_network/flutter_network.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // todo Inject access token here
    super.onRequest(options, handler);
  }
}
