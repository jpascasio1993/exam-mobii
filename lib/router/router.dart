import 'package:exam_mobii/core/global/global_keys.dart';
import 'package:exam_mobii/router/home_route/home_route.dart' as home;
import 'package:exam_mobii/router/details_route/details_route.dart' as details;

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

typedef WrapperBuilder = Widget Function(BuildContext context, Widget child);

typedef Builder = Widget Function(BuildContext context);

class AppRouter {
  AppRouter();

  late final router = GoRouter(
    routes: [...home.$appRoutes, ...details.$appRoutes],
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
  );
}

class ScreenRoute {
  Builder builder;

  ScreenRoute({required this.builder});
}

abstract class BaseRoute<T> extends GoRouteData {
  ScreenRoute screen(BuildContext context, GoRouterState state);

  @override
  Page<T> buildPage(BuildContext context, GoRouterState state) {
    final child = screen(context, state);

    Widget pageContent = child.builder(context);

    return CupertinoPage<T>(child: pageContent);
  }
}
