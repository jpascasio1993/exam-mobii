import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exam_mobii/core/utils/dio/interceptors/custom_interceptor.dart';
import 'package:exam_mobii/di/core_dependencies/i_core_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreDependencies implements ICoreDependencies {
  @lazySingleton
  @override
  List<Interceptor> dioInterceptors() {
    return [
      CustomInterceptor(),
      LogInterceptor(responseBody: kDebugMode, requestBody: kDebugMode),
    ];
  }

  @lazySingleton
  @override
  Dio dio({required BaseOptions options, required List<Interceptor> dioInterceptors}) {
   final dio = Dio()
       ..options = options
       ..transformer = BackgroundTransformer()
       ..interceptors.addAll(dioInterceptors);
   return dio;
  }

  @lazySingleton
  @override
  BaseOptions dioOptions() => BaseOptions(
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    responseType: ResponseType.json,
    contentType: ContentType.json.toString(),
  );
}