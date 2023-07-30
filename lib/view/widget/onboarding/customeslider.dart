import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/onboarding_controller.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return PageView.builder(
      controller: controller.pagecontroller ,
      onPageChanged: (val){
        controller.onPageChanged(val);
        print(val);
      },
                itemCount: OnBoardingList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Text(
                      OnBoardingList[i].title!,
                      style: TextStyle(color: ColorApp.orange),
                    ),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    Image.asset(
                      OnBoardingList[i].image!,
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.24,
                    ),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    Text(OnBoardingList[i].body!),
                  ],
                ),
              );
  }
}