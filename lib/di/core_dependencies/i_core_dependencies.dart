import 'package:dio/dio.dart';

abstract class ICoreDependencies {
  BaseOptions dioOptions();
  Dio dio({required BaseOptions options, required List<Interceptor> dioInterceptors});
  List<Interceptor> dioInterceptors();
}