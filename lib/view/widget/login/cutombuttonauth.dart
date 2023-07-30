import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  // final void Function()? onPressed;
   const CustomButtonAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,right: 20,left: 20),
      child: MaterialButton(
        
        onPressed: onPressed,
        color: ColorApp.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding:const EdgeInsets.symmetric(vertical: 13),
      
      textColor: Colors.white,
      child: Text(text),
      
      ),
    );
  }
}