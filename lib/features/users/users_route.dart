import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:umodel/app/navigation.dart';
// import 'package:umodel/features/home/home_route.dart';
import 'package:umodel/features/users/bloc/users_bloc.dart';
import 'package:umodel/features/users/user_detail/user_detail_route.dart';
import 'package:umodel_users_repository/umodel_user_repository.dart';

import 'users_page.dart';

part 'users_route.g.dart';

@TypedGoRoute<UsersRoute>(
  path: '/users',
  routes: [
    TypedGoRoute<UserDetailRoute>(path: ':userId'),
  ],
)
class UsersRoute extends N8nRoute {
  @override
  String get path => location;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) {
        final repo = context.read<UserRepository>();
        return UsersBloc(userRepository: repo);
      },
      child: const UsersPage(),
    );
  }
}
