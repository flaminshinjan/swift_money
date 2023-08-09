import 'dart:convert';
import 'package:swift_money/models/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:swift_money/models/auth_credentials.dart'; // Import your models or tokens
import 'package:flutter/foundation.dart'; // For @required annotation (if needed)

class AuthService {
  // ...

  Future<void> register(UserCredentials registrationData) async {
    final response = await http.post(
      Uri.parse(ApiConstants.registerEndpoint), // Replace with your actual registration endpoint
      headers: {'Content-Type': 'application/json'},
      body: json.encode(registrationData.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to register');
    }
  }

  // ...
}
