import 'package:flutter/foundation.dart';
import 'package:flutter_network/flutter_network.dart';

class HandleErrorInterceptor extends Interceptor {
  HandleErrorInterceptor({this.errorTokenExpire});

  final VoidCallback? errorTokenExpire;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.responseType = ResponseType.json;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final apiException = await err.toApiException();
    DioException error = err.copyWith(error: apiException);
    if (apiException.statusCode == 503) {
      error = error.copyWith(response: null);
    }

    if (apiException.statusCode == 401) {
      errorTokenExpire?.call();
    } else {
      handler.next(error);
    }
  }
}

extension on DioException {
  Future<ApiException> toApiException() async {
    final errorCode = response?.statusCode ?? 0;
    final path = response?.requestOptions.uri.path ?? '';

    if (errorCode == 503) {
      return ApiException.internalServerError(
          path, 'Localization.current.lbl_error_503', '$errorCode', errorCode);
    }

    String? code;
    String? message;

    try {
      final messages = ((response?.data?['messages'] ?? '[]') as List<dynamic>?)
              ?.map((e) => Message.fromJson(e))
              .toList() ??
          [];

      code = messages.firstOrNull?.code;
      message = messages.firstOrNull?.message;
    } catch (error) {
      try {
        // Handle error case for OCR
        if (response?.data?['error'] is String) {
          code = response?.data?['statusCode'];
          message = response?.data?['error'];
        }
      } catch (_) {}

      debugPrint('error= $error');
    }

    switch (errorCode) {
      case 400:
        return ApiException.badRequest(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      case 422:
        return ApiException.badRequest(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      case 401:
        return ApiException.unauthorized(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      case 403:
        return ApiException.forbidden(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      case 404:
        return ApiException.notFound(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      case 500:
        return ApiException.internalServerError(
            path,
            message ?? 'Localization.current.lbl_general_error',
            code,
            errorCode);
      default:
        return ApiException.noConnection(path,
            message ?? 'Localization.current.lbl_error_no_connection', '', 0);
    }
  }
}
