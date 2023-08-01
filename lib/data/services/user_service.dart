import 'dart:async';

import 'package:dio/dio.dart';
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';

part 'user_service.g.dart';

@RestApi(
  parser: Parser.FlutterCompute
)
abstract class UserService {
  factory UserService(Dio dio) => _UserService(dio);

  @GET('https://gist.githubusercontent.com/dustincatap/66d48847b3ca07af7cef789d6ac8fee8/raw/550798be0efa8b98f6924cfb4ad812cd290f568a/users.json')
  Future<List<User>> getUsers();
}

List<User> deserializeUserList(List<Map<String, dynamic>> json) => json.map((e) => User.fromJson(e)).toList();


