import 'package:flutter_course_mytest/core/services/authsevice.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final ApiService apiService;
  LoginController(this.apiService);

  RxBool isLoading = false.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      final response = await apiService.login(email, password);
      // Handle successful login response here
    } catch (e) {
      // Handle login failure and show error message
    } finally {
      isLoading.value = false;
    }
  }
}

class SignupController extends GetxController {
  final ApiService apiService;
  SignupController(this.apiService);

  RxBool isLoading = false.obs;

  Future<void> signup(String username, String email, String password) async {
    isLoading.value = true;
    try {
      final response = await apiService.signup(username, email, password);
      // Handle successful signup response here
    } catch (e) {
      // Handle signup failure and show error message
    } finally {
      isLoading.value = false;
    }
  }
}
