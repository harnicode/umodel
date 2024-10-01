class UserApiPostModel {
  int id;
  String firstname;
  String lastname;
  String email;
  final String birthDate;
  Address address;
  Login login;

  UserApiPostModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.birthDate,
    required this.address,
    required this.login,
  });

  factory UserApiPostModel.fromJson(Map<String, dynamic> json) {
    return UserApiPostModel(
      id: json['id'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      birthDate: json['birthDate'],
      address: Address.fromJson(json['address']),
      login: Login.fromJson(json['login']),
    );
  }
}

class Login {
  String uuid;
  String username;
  String password;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      uuid: json['uuid'],
      username: json['username'],
      password: json['password'],
    );
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
    );
  }
}
