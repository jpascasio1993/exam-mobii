import 'package:exam_mobii/core/global/global_keys.dart';
import 'package:exam_mobii/router/home_route/home_route.dart' as home;
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

typedef WrapperBuilder = Widget Function(BuildContext context, Widget child);

typedef Builder = Widget Function(BuildContext context);

class AppRouter {
  AppRouter();
  late final router = GoRouter(routes: [...home.$appRoutes], navigatorKey: rootNavigatorKey, initialLocation: '/');
}

class ScreenRoute {
  WrapperBuilder? wrapperBuilder;
  Builder builder;

  ScreenRoute({required this.builder, this.wrapperBuilder});
}

abstract class BaseRoute<T> extends GoRouteData {
  ScreenRoute screen(BuildContext context, GoRouterState state);

  @override
  Page<T> buildPage(BuildContext context, GoRouterState state) {
    final child = screen(context, state);

    Widget pageContent = child.wrapperBuilder != null ? child.wrapperBuilder!(context, child.builder(context)) : child.builder(context);

    return CupertinoPage<T>(child: pageContent);
  }
}
