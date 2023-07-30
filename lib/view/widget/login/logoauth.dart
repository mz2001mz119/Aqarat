import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/imageasset.dart';

class LogoLoginAuth extends StatelessWidget {
  const LogoLoginAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.LoginLogo,height:200 ,);
  }
}