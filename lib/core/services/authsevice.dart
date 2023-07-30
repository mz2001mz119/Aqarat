import 'package:flutter_course_mytest/data/model/usermodel.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<LoginResponseModel> login(String email, String password) async {
    final response = await http.post(Uri.parse(Applink.SigninUser),
        body: {'email': email, 'password': password});

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return LoginResponseModel(
        token: jsonData['token'],
        user: UserModel(
          username: jsonData['user']['username'],
          email: jsonData['user']['email'],
        ),
      );
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<SignupResponseModel> signup(
      String username, String email, String password) async {
    final response = await http.post(Uri.parse(Applink.SignupUser), body: {
      'username': username,
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return SignupResponseModel(message: jsonData['message']);
    } else {
      throw Exception('Failed to signup');
    }
  }
}
