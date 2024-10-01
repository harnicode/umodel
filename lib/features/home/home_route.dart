import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umodel/app/navigation.dart';
// import 'package:umodel/app/navigation.dart';

import 'package:umodel/features/users/users_route.dart';
import 'home_page.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<UsersRoute>(path: 'users'),
  ],
)
class HomeRoute extends N8nRoute {
  @override
  String get path => location;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
