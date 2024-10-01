// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $usersRoute,
    ];

RouteBase get $usersRoute => GoRouteData.$route(
      path: '/users',
      factory: $UsersRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':userId',
          factory: $UserDetailRouteExtension._fromState,
        ),
      ],
    );

extension $UsersRouteExtension on UsersRoute {
  static UsersRoute _fromState(GoRouterState state) => UsersRoute();

  String get location => GoRouteData.$location(
        '/users',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserDetailRouteExtension on UserDetailRoute {
  static UserDetailRoute _fromState(GoRouterState state) => UserDetailRoute(
        userId: state.pathParameters['userId']!,
        user: state.uri.queryParameters['user']!,
      );

  String get location => GoRouteData.$location(
        '/users/${Uri.encodeComponent(userId)}',
        queryParams: {
          'user': user,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
