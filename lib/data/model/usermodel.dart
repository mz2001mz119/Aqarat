class UserModel {
  final String username;
  final String email;

  UserModel({required this.username, required this.email});
}

class LoginResponseModel {
  final String token;
  final UserModel user;

  LoginResponseModel({required this.token, required this.user});
}

// signup_response_model.dart
class SignupResponseModel {
  final String message;

  SignupResponseModel({required this.message});
}