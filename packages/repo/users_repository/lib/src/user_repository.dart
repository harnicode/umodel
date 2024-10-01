import 'package:flutter/foundation.dart';
import 'package:umodel_users_api/umodel_users_api.dart';

import 'models/models.dart';

class UserRepository {
  final UserApi _userApi;

  UserRepository({required UserApi userApi}) : _userApi = userApi;

  Future<List<UserModel>> getAllUsers() async {
    List<UserModel> users = [];

    final (:exception, :response) = await _userApi.getAllUsers();

    if (exception != null) {
      debugPrint(exception.message);
    }

    if (response != null) {
      final apiUsers = response.users;

      users = apiUsers.map((item) {
        return UserModel(
          id: item.id.toString(),
          firstname: item.firstname,
          lastname: item.lastname,
          email: item.email,
          birthDate: item.birthDate,
          // website: item.website,
          // phone: item.phone,
          login: UserLogins(
            username: item.login.username,
            password: item.login.password,
          ),
          address: UserAddress(
            street: item.address.street,
            suite: item.address.suite,
            city: item.address.city,
            zipcode: item.address.zipcode,
          ),
          // company: UserCompany(
          //   name: item.name,
          //   catchPhrase: item.catchPhrase,
          // ),
        );
      }).toList();
    }

    return users;
  }
}
