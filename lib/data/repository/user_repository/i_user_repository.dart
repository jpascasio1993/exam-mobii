import 'package:exam_mobii/data/domain/result/result.dart';
import 'package:exam_mobii/data/domain/user/user.dart';

abstract class IUserRepository {
  Future<Result<List<User>>> getUsers();
}