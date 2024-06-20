import 'package:dio/dio.dart';
import 'package:flutter_common/src/network/app_network.dart';
import 'package:flutter_core/flutter_core.dart';

class LoginInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final networkConfig = GetIt.instance<Network>().network as AppNetworkConfig;
    options.headers.addAll({'lang': 'en'});
    if (options.baseUrl == networkConfig.apiUrl) {
      final apiHeaders = {
        'Accept': 'application/json',
        'Content-type': 'application/json',
      };
      options.headers.addAll(apiHeaders);
    }
    super.onRequest(options, handler);
  }
}
