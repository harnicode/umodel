class UserAddress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  UserAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  @override
  toString() {
    return """UserAddress(
      street: $street, 
      suite: $suite, 
      city: $city, 
      zipcode: $zipcode,
    )""";
  }
}

class UserCompany {
  final String name;
  final String catchPhrase;

  UserCompany({
    required this.name,
    required this.catchPhrase,
  });

  @override
  toString() {
    return """UserCompany(
      name: $name, 
      catchPhrase: $catchPhrase, 
    )""";
  }
}

class UserLogins {
  final String username;
  final String password;

  UserLogins({
    required this.username,
    required this.password,
  });

  @override
  toString() {
    return """UserCompany(
      username: $username, 
      password: $password, 
    )""";
  }
}
