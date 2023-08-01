import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/repository/user_repository/user_repository.dart';
import 'package:exam_mobii/data/services/user_service.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_store_test.mocks.dart';

@GenerateMocks([
  IUserService,
  IUserRepository
])
void main() {
  late MockIUserService mockUserService;
  late UserStore userStore;
  late UserRepository userRepository;
  late List<User> dummyUsers;

  setUp(() {
    mockUserService = MockIUserService();
    userRepository = UserRepository(userService: mockUserService);
    userStore = UserStore(repository: userRepository);
    dummyUsers = [
      User.fromJson({
        "id": "1",
        "name": "John",
        "imageUrl": "https://www.alchinlong.com/wp-content/uploads/2015/09/sample-profile.png"
      }),
      User.fromJson({
        "id": "1",
        "name": "John",
        "imageUrl": "https://www.alchinlong.com/wp-content/uploads/2015/09/sample-profile.png"
      }),
      User.fromJson({
        "id": "2",
        "name": "Chris",
        "imageUrl": "https://www.alchinlong.com/wp-content/uploads/2015/09/sample-profile.png"
      }),
      User.fromJson({
        "id": "3",
        "name": "Mark",
        "imageUrl": "https://www.alchinlong.com/wp-content/uploads/2015/09/sample-profile.png"
      })
    ];
  });

  group('get users via user_store', () {
    test('should retrieve users', () async {
      when(mockUserService.getUsers()).thenAnswer((_) async => dummyUsers);
      await userStore.getUsers();
      expect(userStore.state.users, dummyUsers);
    });
  });
}