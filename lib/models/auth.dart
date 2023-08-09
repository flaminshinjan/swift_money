// user_credentials.dart
class UserCredentials {
  final String firstname;
  final String lastname;
  final String password;
  final String email;
  final String phone;
  final String dob;

  UserCredentials({required this.dob,required this.firstname,required this.lastname,required this.email, required this.password, required this.phone});

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'password': password,
      'email': email,
      'phone': phone,
      'dob': dob,
    };
  }
}

// auth_token.dart
class AuthToken {
  final String token;

  AuthToken({required this.token});

  factory AuthToken.fromJson(Map<String, dynamic> json) {
    return AuthToken(token: json['token']);
  }
}
