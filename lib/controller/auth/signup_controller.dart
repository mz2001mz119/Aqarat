import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class SignUpController extends GetxController{
  signup();
  GotoSignIn();

SignupWithApi(String email, String password,String firstname,String lastname) ;

}
class SignUpControllerImp extends SignUpController{

  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController email;
  late TextEditingController password;

  @override
  signup() {
    
  }
  
  @override
  GotoSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email =TextEditingController();
    password= TextEditingController();
    firstName= TextEditingController();
    lastName= TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    firstName.dispose();
      lastName.dispose();
    super.dispose();
  }







 SignupWithApi(String a, String b,String c,String d) async {
  // final EmailController emailController=Get.put(EmailController());




var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse(Applink.SignupUser));
request.body = json.encode({
  "firstName": "$a",
  "lastName": "$b",
  "email": "$c",
  "password": "$d"
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}





  }







}