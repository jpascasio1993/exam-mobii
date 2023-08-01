import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';

abstract class ICoreStoreDependencies {
  UserStore userStore({required IUserRepository repository});
}