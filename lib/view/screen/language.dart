import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/localization/changelocal.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: Theme.of(context).textTheme.headline1,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: ColorApp.orange,
                onPressed: (){
                  controller.changelang("ar");
                  Get.toNamed(AppRoute.onBoarding);


                },
              child: Text("ar"),
              ),
              
            ),
             Container(
                padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: ColorApp.orange,
                onPressed: (){
                  controller.changelang("en");
                  Get.toNamed(AppRoute.onBoarding);

                },
              child: Text("en"),
              ),
              
            ),

          ],
        ),
      ),
    );
  }
}