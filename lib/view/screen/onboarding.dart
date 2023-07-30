import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/onboarding_controller.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/view/widget/onboarding/custombutton.dart';
import 'package:flutter_course_mytest/view/widget/onboarding/customeslider.dart';
import 'package:flutter_course_mytest/view/widget/onboarding/dotcontroller.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var size=MediaQuery.of(context).size;
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
           const Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnBoarding(),
                  Spacer(flex:2),
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
