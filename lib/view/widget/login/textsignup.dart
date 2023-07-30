import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';

class CustomTextSignup extends StatelessWidget {
  final String text1;
  final String text2;
  final void  Function()? onTap;
  const CustomTextSignup({super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1),
                  InkWell(
                    onTap: onTap,
                    child: Text(text2,style:TextStyle(color: ColorApp.orange) ,),
                  )
                ],
              );
  }
}