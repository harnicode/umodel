import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:umodel_users_repository/umodel_user_repository.dart';

class UserDetailPage extends StatelessWidget {
  final String user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // final aUser = user as UserModel;
    // final userToJson = user.toJson(user);
    Map<String, dynamic> otherUser = json.decode(user);
    UserModel aUser = UserModel.fromJson(otherUser);
    return Scaffold(
      body: Center(
        child: Text(aUser.firstname),
      ),
    );
  }
}
