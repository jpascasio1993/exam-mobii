import 'package:dio/dio.dart';
import 'package:exam_mobii/data/services/user_service.dart';
import 'package:exam_mobii/di/core_services_dependencies/i_core_services_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreServicesDependencies implements ICoreServicesDependencies {
  @lazySingleton
  @override
  IUserService userService({required UserServiceAPI userServiceAPI}) => UserService(userServiceAPI: userServiceAPI);

  @lazySingleton
  @override
  UserServiceAPI userServiceAPI({required Dio dio}) => UserServiceAPI(dio);
}