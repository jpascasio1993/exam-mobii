import 'package:dio/dio.dart';
import 'package:exam_mobii/data/services/user_service.dart';

abstract class ICoreServicesDependencies {
  UserService userService({required Dio dio});
}