import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/services/services.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;

  MyServices myServices=Get.find();
  @override
  RouteSettings? redirect(String? route){
if(myServices.sharedPreferences.getString("onboarding")==1){
return RouteSettings(name:AppRoute.login);
}
  }
}