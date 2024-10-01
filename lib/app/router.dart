

import 'package:go_router/go_router.dart';
import 'package:umodel/features/home/home_route.dart';
import 'package:umodel/features/users/users_route.dart';
// import 'package:umodel/features/users/users_route.dart';

final router = GoRouter(
  // initialLocation: UsersRoute().location,
  routes: [
    $homeRoute,
    $usersRoute
  ],
);
