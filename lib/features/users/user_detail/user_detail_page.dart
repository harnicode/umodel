
import 'package:flutter/material.dart';
// import 'package:umodel_users_repository/umodel_user_repository.dart';

class UserDetailPage extends StatelessWidget {
  final String user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(user),
      ),
    );
  }
}
