import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umodel/app/navigation.dart';
// import 'package:umodel/features/users/bloc/users_bloc.dart';
// import 'package:umodel/features/home/home_route.dart';
import 'package:umodel/features/users/users_route.dart';
// import 'package:umodel/app/navigation.dart';
// import 'package:umodel/features/users/users_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.navigate(UsersRoute());
          },
          child: const Text("Hello"),
        ),
      ),
    );
  }
}
