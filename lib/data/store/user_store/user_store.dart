import 'package:contextual_logging/contextual_logging.dart';
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/store/base_store.dart';
import 'package:exam_mobii/data/store/user_store/user_store_state.dart';

class UserStore extends BaseStore<UserStoreState> with ContextualLogger {
  final IUserRepository _repository;

  UserStore({required IUserRepository repository}): _repository = repository, super(const UserStoreState());

  @override
  String get logContext => runtimeType.toString();

  Future<List<User>> getUsers() async {
    if(state.isLoading) return state.users;

    state = state.copyWith(isLoading: true);
    notifyListeners();

    log.d('getUsers()');

    final resultData = await _repository.getUsers();
    resultData.when(success: (data) {
      state = state.copyWith(users: data, isLoading: false);
    }, error: (message, exception, stackTrace) {
      state = state.copyWith(exception: exception, errorMessage: message, isLoading: false);
    });
    notifyListeners();
    return state.users;
  }
}