import 'user_metadata.dart';

class UserModel {
  final String id;
  final String firstname;
  final String lastname;
  final String email;
  final String birthDate;
  // final String phone;
  // final String website;
  final UserAddress address;
  // final UserCompany company;
  final UserLogins login;

  UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.birthDate,
    // required this.phone,
    // required this.website,
    required this.address,
    // required this.company,
    required this.login,
  });

  @override
  String toString() {
    return """UserModel(
      id: '$id',
      firstname: '$firstname',
      lastname: '$lastname',
      email: '$email',
      birthDate: '$birthDate',
      address: '$address',
      login: '$login',
    )""";
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      birthDate: json['birthDate'],
      address: json['address'],
      login: json['login'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'birthDate': birthDate,
      'address': address,
      'login': login,
    };
  }

}
