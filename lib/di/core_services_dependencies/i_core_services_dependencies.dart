import 'package:dio/dio.dart';
import 'package:exam_mobii/data/services/user_service.dart';

abstract class ICoreServicesDependencies {
  UserServiceAPI userServiceAPI({required Dio dio});
  IUserService userService({required UserServiceAPI userServiceAPI});
}