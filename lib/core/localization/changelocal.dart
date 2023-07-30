import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/services/services.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{

  Locale? language;
  MyServices myServices=Get.find();
  changelang(String lang){
Locale locale = Locale(lang);
myServices.sharedPreferences.setString("lang", lang);
Get.updateLocale(locale);
  }


  @override
  void onInit(){
String? lang=myServices.sharedPreferences.getString("lang");
    if(lang=="ar"){
      language=const Locale("ar");
    }
    else if(lang=="en"){
language=const Locale("en");
    }
    else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}