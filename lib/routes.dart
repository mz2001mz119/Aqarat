import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/middleware/mymiddleware.dart';
import 'package:flutter_course_mytest/view/screen/AdminScreens/adminhomepage.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/buyerhomepage.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/buyersearchscreen.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/resultbuyerscreen.dart';
import 'package:flutter_course_mytest/view/screen/auth/login.dart';
import 'package:flutter_course_mytest/view/screen/auth/signup.dart';
import 'package:flutter_course_mytest/view/screen/language.dart';
import 'package:flutter_course_mytest/view/screen/onboarding.dart';
import 'package:flutter_course_mytest/view/test_view.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';


List<GetPage<dynamic>>? routes=[
  // GetPage(name: "/", page: ()=>Language(),middlewares: [
  //   MyMiddleWare()
  // ]),
  // GetPage(name: "/", page: ()=>ResultBuyerScreen()),

  ///
  GetPage(name: "/", page: ()=>Language()),
  GetPage(name: AppRoute.login, page: ()=>Login()),
  GetPage(name: AppRoute.signup, page: ()=>SignUp()),
  GetPage(name: AppRoute.onBoarding, page: ()=>OnBoarding()),
  GetPage(name: AppRoute.adminhomepage, page: ()=>AdminHome()),
  GetPage(name: AppRoute.buyerhomepage, page: ()=>BuyerHomePage()),


];

