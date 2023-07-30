import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  signup();
  GotoSignIn();



}
class SignUpControllerImp extends SignUpController{

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

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
    phone= TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

}