import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/services/authsevice.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/data/model/usermodel.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSignup();
  loginWithApi(String email, String password);
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  bool isShowpass = true;
  final ApiService apiService = ApiService(Applink.SigninUser); // Replace with your actual base URL

  LoginControllerImp();

  showpass() {
    isShowpass = !isShowpass;
    update();
  }

  @override
  login() {
    Get.toNamed(AppRoute.adminhomepage);
  }

  @override
  gotoSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  // loginWithApi(String email, String password) async {
  //   try {
  //     // Call the API service to perform the login
  //     final LoginResponseModel response = await apiService.login(email, password);

  //     // Assuming that the API service returns a token upon successful login
  //     if (response.token.isNotEmpty) {
  //       // Handle successful login, e.g., store the token, navigate to the home page, etc.
  //       Get.toNamed(AppRoute.adminhomepage);
  //     } else {
  //       // Handle login failure, show error message, etc.
  //       Get.snackbar('Login Failed', 'Invalid username or password');
  //     }
  //   } catch (e) {
  //     // Handle any exceptions that may occur during the API call
  //     print('Error: $e');
  // Get.snackbar('Error', 'Failed to perform login: $e');
  //   }
  // }


 loginWithApi(String email, String password) async {
  // final EmailController emailController=Get.put(EmailController());
final EmailController emailController = Get.find<EmailController>();
       var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse(Applink.SigninUser));
request.body = json.encode({
  "email": "$email",
  "password": "$password"
});
request.headers.addAll(headers);
emailController.removeData("username");
emailController.removeData("response");
String? x=emailController.getData("username");
print("removed");
print(x);
http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  String msg=await response.stream.bytesToString();
  if(msg=="logged in successfully"){
  emailController.setData("username", email);
  x=emailController.getData("username");
print("assigned");
print(x);

  print(msg);
  // Get.toNamed(AppRoute.adminhomepage);
  emailController.setData("response", msg);
  }
  else if(msg=="wrong username or password"){
    print(msg);
  }
  else{
    print("unknown 200");
  }
   
}
else {
  print(response.reasonPhrase);
}

  }

}
