import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(OnBoardingList.length, (index) => 
                      AnimatedContainer(duration: const Duration(milliseconds: 900),
                      width:controller.currentpage==index ? 20 : 5 ,
                      height: 6,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: ColorApp.orange,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      )
                      )
                    ],
                  ));
  }
}