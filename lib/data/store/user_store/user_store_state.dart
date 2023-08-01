import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_store_state.freezed.dart';

@freezed
class UserStoreState with _$UserStoreState {
  const factory UserStoreState({
    @Default([]) List<User> users,
    @Default(false) bool isLoading,
    String? errorMessage,
    Exception? exception
  }) = _UserStoreState;
}
