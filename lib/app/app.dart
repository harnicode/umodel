import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umodel/app/router.dart';
// import 'package:umodel/features/login/login_page.dart';
// import 'package:umodel/features/users/users_page.dart';
// import 'package:umodel/features/login/login_page.dart';
// import 'package:umodel/features/users/users_page.dart';
import 'package:umodel_users_repository/umodel_user_repository.dart';

class UmodelApp extends StatelessWidget {
  final UserRepository userRepository;

  const UmodelApp({
    super.key,
    required this.userRepository,
  });

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: userRepository,
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
    //   return const MaterialApp(
    //     home: UsersPage(),
    //   );
    // }
  }
}
