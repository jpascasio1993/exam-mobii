import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:exam_mobii/data/domain/result/result.dart';
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/repository/user_repository/user_repository.dart';
import 'package:exam_mobii/data/services/user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import 'repository_test.mocks.dart';


@GenerateMocks([Dio, IUserService,], customMocks: [
  MockSpec<HttpResponse<String>>()
])
void main() {
  late MockIUserService mockUserService;
  late IUserRepository userRepository;
  late List<User> dummyUsers;

  setUp(() async {
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
    mockUserService = MockIUserService();
    userRepository = UserRepository(userService: mockUserService);
  });

  group('get users', () {
    test('should retrieve list of users', () async {
      when(mockUserService.getUsers()).thenAnswer((_) async => dummyUsers);
      final res = await userRepository.getUsers();
      expect(res, Result.success(dummyUsers));
    });
  });
}