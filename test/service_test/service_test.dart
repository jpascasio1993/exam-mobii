import 'dart:convert';

import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/data/services/user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';
import 'service_test.mocks.dart';


@GenerateMocks([
  UserServiceAPI,
])
@GenerateNiceMocks([
  MockSpec<HttpResponse<String>>(),
])
void main() {
  late MockUserServiceAPI mockUserServiceAPI;
  late UserService userService;
  late List<User> dummyUsers;
  late List<User> distinctDummyUsers;
  late String dummyJsonResponse;
  late MockHttpResponse mockHttpResponse;
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
    dummyJsonResponse = jsonEncode(dummyUsers);
    mockHttpResponse = MockHttpResponse();
    distinctDummyUsers = await Stream.fromIterable(dummyUsers)
        .distinct((previous, next) => previous.id == next.id && previous.name == next.name)
        .toList();
    mockUserServiceAPI = MockUserServiceAPI();
    userService = UserService(userServiceAPI: mockUserServiceAPI);
  });

  group('get user via service', () {
    test('should return distinct users', () async {
      when(mockHttpResponse.data).thenReturn(dummyJsonResponse);
      when(mockUserServiceAPI.getUsers()).thenAnswer((_) async => mockHttpResponse);
      final res = await userService.getUsers();
      expect(res, distinctDummyUsers);
    });
  });
}