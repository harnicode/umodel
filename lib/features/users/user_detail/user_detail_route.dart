import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umodel/app/navigation.dart';
import 'package:umodel/features/users/user_detail/user_detail_page.dart';
import 'package:umodel/features/users/users_route.dart';
// import 'package:umodel_users_repository/umodel_user_repository.dart';

class UserDetailRoute extends N8nRoute {
  final String userId;
  final String user;

  UserDetailRoute({required this.userId, required this.user});

  @override
  String get path => location;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    debugPrint('UserDetailRoute: $userId');
    debugPrint('User: $user');

    return UserDetailPage(user: user);
  }
}
