import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/binding/initialbindings.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/core/localization/changelocal.dart';
import 'package:flutter_course_mytest/core/localization/translation.dart';
import 'package:flutter_course_mytest/core/services/services.dart';
import 'package:flutter_course_mytest/routes.dart';
import 'package:flutter_course_mytest/view/screen/AdminScreens/adminhomepage.dart';
import 'package:flutter_course_mytest/view/screen/language.dart';
import 'package:flutter_course_mytest/view/screen/onboarding.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   LocalController controller= Get.put(LocalController());
    return GetMaterialApp(
      locale: controller.language,

      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1:  TextStyle(
            fontWeight: FontWeight.bold,fontSize: 22
          ),
          headline2:  TextStyle(
            fontWeight: FontWeight.bold,fontSize: 26
          ),
          bodyText1: TextStyle(
            height: 2,
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 14
          ) 
        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      //home:const Language(),
      initialBinding: initialbindings(),
    //  home: AdminHome(),
      getPages: routes,
    );
  }
}
