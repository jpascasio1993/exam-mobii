import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:exam_mobii/di/core_store_dependencies/i_core_store_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreStoreDependencies implements ICoreStoreDependencies {
  @factoryMethod
  @override
  UserStore userStore({required IUserRepository repository}) => UserStore(repository: repository);
}