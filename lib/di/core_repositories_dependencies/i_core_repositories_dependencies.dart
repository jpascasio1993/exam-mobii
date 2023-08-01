import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/services/user_service.dart';

abstract class ICoreRepositoriesDependencies {
  IUserRepository userRepository({required UserService userService});
}