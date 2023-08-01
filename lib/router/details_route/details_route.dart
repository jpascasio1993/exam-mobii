import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:exam_mobii/features/user_details/user_details.dart';
import 'package:exam_mobii/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'details_route.g.dart';

@TypedGoRoute<UserDetailsRoute>(path: '/user/:userId')
class UserDetailsRoute extends BaseRoute<void> {
  final int userId;
  final User $extra;

  UserDetailsRoute({required this.userId, required this.$extra});

  @override
  ScreenRoute screen(BuildContext context, GoRouterState state) {
    return ScreenRoute(builder: (context) => UserDetails(user: $extra, key: state.pageKey,));
  }
}