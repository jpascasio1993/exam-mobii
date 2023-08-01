import 'dart:async';

import 'package:dio/dio.dart' hide Headers;
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/dio.dart';

part 'user_service.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio) => _UserService(dio);

  @GET('https://gist.githubusercontent.com/dustincatap/66d48847b3ca07af7cef789d6ac8fee8/raw/550798be0efa8b98f6924cfb4ad812cd290f568a/users.json')
  Future<HttpResponse<String>> getUsers();
}



