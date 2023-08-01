
import 'package:exam_mobii/features/home/home.dart';
import 'package:exam_mobii/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends BaseRoute<void> {
  @override
  ScreenRoute screen(BuildContext context, GoRouterState state) {
    return ScreenRoute(builder: (context) => Home(key: state.pageKey));
  }
}