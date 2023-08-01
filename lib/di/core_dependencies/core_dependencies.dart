import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exam_mobii/core/utils/dio/interceptors/custom_interceptor.dart';
import 'package:exam_mobii/di/core_dependencies/i_core_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreDependencies implements ICoreDependencies {
  @override
  List<Interceptor> dioInterceptors() {
    return [
      CustomInterceptor()
    ];
  }

  @override
  Dio dio({required BaseOptions options, required List<Interceptor> dioInterceptors}) {
   return Dio()
       ..options = options
       ..transformer = BackgroundTransformer()
       ..interceptors.addAll(dioInterceptors);
  }

  @override
  BaseOptions dioOptions() => BaseOptions(
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    responseType: ResponseType.json,
    contentType: ContentType.json.toString(),
  );
}