import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                   //  color: ColorApp.orange,
                     padding: EdgeInsets.all(10),
                    child: MaterialButton(
                      color: ColorApp.orange,
                    onPressed: ()
                    {
                      controller.next();


                    },
                    
                    
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Text("Continue"),
                    ),
                  );
  }
}