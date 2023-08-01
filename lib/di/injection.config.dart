// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:exam_mobii/data/repository/user_repository/i_user_repository.dart'
    as _i5;
import 'package:exam_mobii/data/services/user_service.dart' as _i4;
import 'package:exam_mobii/di/core_dependencies/core_dependencies.dart' as _i6;
import 'package:exam_mobii/di/core_repositories_dependencies/core_repositories_dependencies.dart'
    as _i8;
import 'package:exam_mobii/di/core_services_dependencies/core_services_dependencies.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final coreDependencies = _$CoreDependencies();
  final coreServicesDependencies = _$CoreServicesDependencies();
  final coreRepositoriesDependencies = _$CoreRepositoriesDependencies();
  gh.factory<_i3.BaseOptions>(() => coreDependencies.dioOptions());
  gh.factory<List<_i3.Interceptor>>(() => coreDependencies.dioInterceptors());
  gh.factory<_i3.Dio>(() => coreDependencies.dio(
        options: get<_i3.BaseOptions>(),
        dioInterceptors: get<List<_i3.Interceptor>>(),
      ));
  gh.factory<_i4.UserService>(
      () => coreServicesDependencies.userService(dio: get<_i3.Dio>()));
  gh.factory<_i5.IUserRepository>(() => coreRepositoriesDependencies
      .userRepository(userService: get<_i4.UserService>()));
  return get;
}

class _$CoreDependencies extends _i6.CoreDependencies {}

class _$CoreServicesDependencies extends _i7.CoreServicesDependencies {}

class _$CoreRepositoriesDependencies extends _i8.CoreRepositoriesDependencies {}
