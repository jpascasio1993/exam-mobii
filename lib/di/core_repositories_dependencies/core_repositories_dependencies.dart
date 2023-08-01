import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/repository/user_repository/user_repository.dart';
import 'package:exam_mobii/data/services/user_service.dart';
import 'package:exam_mobii/di/core_repositories_dependencies/i_core_repositories_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreRepositoriesDependencies implements ICoreRepositoriesDependencies {
  @lazySingleton
  @override
  IUserRepository userRepository({required UserService userService}) => UserRepository(userService: userService);
}