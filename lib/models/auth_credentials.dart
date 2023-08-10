// user_credentials.dart
class UserCredentials {
  final String firstName;
  final String lastName;
  final String password;
  final String email;
  final String phone;
  final String dob;

  UserCredentials({required this.dob,required this.firstName,required this.lastName,required this.email, required this.password, required this.phone});

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
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
