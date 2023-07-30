import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/services/services.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController{

  late PageController pagecontroller;
  MyServices myServices=Get.find();


  int currentpage=0;
  @override
  next() {
    currentpage++;
    if(currentpage>OnBoardingList.length-1)
    {
      myServices.sharedPreferences.setString("onboarding", "1");
      int i =OnBoardingList.length-1;
      print("$currentpage   not bigger than $i   ");
      Get.offAllNamed(AppRoute.login);

    }
    else
    {
    pagecontroller.animateToPage(currentpage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);

    }


  }

  @override
  onPageChanged(int index) {
  currentpage=index;
  update();
  }

  @override
  void onInit() {
    pagecontroller=PageController();
    super.onInit();
    
  }

}