import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:exam_mobii/data/domain/result/result.dart';
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart';
import 'package:exam_mobii/data/services/user_service.dart';

class UserRepository extends IUserRepository {
  final UserService userService;

  UserRepository({required this.userService});

  @override
  Future<Result<List<User>>> getUsers() async {
    try {
      final res = await userService.getUsers();
      final List<dynamic> jsonData = jsonDecode(res.data);
      final distinct = await Stream.fromIterable(jsonData.map((e) => User.fromJson(e)).cast<User>())
          .distinct((previous, next) => previous.id == next.id && previous.name == next.name)
          .toList();
      return Result.success(distinct);
    } on DioError catch (e, s) {
      return Result.error(e.message ?? 'Something went wrong', exception: e);
    } on Exception catch (e, s) {
      return Result.error('[Exception] Something went wrong', exception: e, stackTrace: s);
    }
  }
}
