import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'exception_models/exception_models.dart';
import 'user_api_abstract.dart';
import 'response_models/response_models.dart';

class UserApiLocal extends UserApi {
  final _completer = Completer<List<UserApiPostModel>>();

  final String assetPath;

  UserApiLocal({this.assetPath = 'assets/users.json'}) {
    rootBundle.loadString(assetPath).then((value) {
      final List<dynamic> data = jsonDecode(value);
      final List<UserApiPostModel> users = data.map((item) {
        return UserApiPostModel.fromJson(item);
      }).toList();

      _completer.complete(users);
    }).catchError((error) {
      _completer.completeError(error);
    });
  }

  @override
  Future<UserApiGetPostsResult> getAllUsers() async {
    try {
      final users = await _completer.future;

      final result = UserApiGetPostsReponse(users: users);

      return success(result);
    } catch (e) {
      final exception = UserApiFatalException(
        code: 500,
        message: e.toString(),
        endpoint: '',
      );

      return failure(exception);
    }
  }
}
