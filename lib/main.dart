import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umodel/app/app.dart';
import 'package:umodel/app/observer.dart';
import 'package:umodel_users_api/umodel_users_api.dart';
import 'package:umodel_users_repository/umodel_user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const Observer();

  final UserApi api = UserApiLocal(assetPath: 'assets/users.json');
  final UserRepository repo = UserRepository(userApi: api);

  runApp(UmodelApp(userRepository: repo,));
}
