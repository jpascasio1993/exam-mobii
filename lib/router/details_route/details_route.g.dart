// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $userDetailsRoute,
    ];

RouteBase get $userDetailsRoute => GoRouteData.$route(
      path: '/user/:userId',
      factory: $UserDetailsRouteExtension._fromState,
    );

extension $UserDetailsRouteExtension on UserDetailsRoute {
  static UserDetailsRoute _fromState(GoRouterState state) => UserDetailsRoute(
        userId: int.parse(state.pathParameters['userId']!),
        $extra: state.extra as User,
      );

  String get location => GoRouteData.$location(
        '/user/${Uri.encodeComponent(userId.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);
}
