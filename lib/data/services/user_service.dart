import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/dio.dart';

part 'user_service.g.dart';


abstract class IUserService {
  Future<List<User>> getUsers();
}

class UserService implements IUserService {
  final UserServiceAPI userServiceAPI;

  UserService({required this.userServiceAPI});

  @override
  Future<List<User>> getUsers() async {
    final res = await userServiceAPI.getUsers();
    final List<dynamic> jsonData = jsonDecode(res.data);
    final distinct = await Stream.fromIterable(jsonData.map((e) => User.fromJson(e)).cast<User>())
        .distinct((previous, next) => previous.id == next.id && previous.name == next.name)
        .toList();
    return distinct;
  }
}

@RestApi()
abstract class UserServiceAPI {
  factory UserServiceAPI(Dio dio) => _UserServiceAPI(dio);

  @GET('https://gist.githubusercontent.com/dustincatap/66d48847b3ca07af7cef789d6ac8fee8/raw/550798be0efa8b98f6924cfb4ad812cd290f568a/users.json')
  Future<HttpResponse<String>> getUsers();
}



