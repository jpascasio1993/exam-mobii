import 'package:dio/dio.dart';

class CustomInterceptor extends QueuedInterceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final message = err.response != null && err.response!.statusCode != null ? switch(err.response!.statusCode) {
      400 => 'Bad Request',
      401 => 'Unauthorized',
      _ => 'Something went wrong',
    } : 'Something went wrong';

    return handler.reject(err.copyWith(
      message: message
    ));
  }
}