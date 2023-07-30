import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/auth/signup_controller.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/view/widget/login/customformfieldauth.dart';
import 'package:flutter_course_mytest/view/widget/login/cutombuttonauth.dart';
import 'package:flutter_course_mytest/view/widget/login/textsignup.dart';
import 'package:get/get.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller =Get.put(SignUpControllerImp());
    return Scaffold(
    appBar: AppBar(
      backgroundColor: ColorApp.backgroundcolor,
      centerTitle: true,
     elevation: 0.0,
      title: Text("2".tr,style: Theme.of(context).textTheme.headline1!,),
    ),
    body:  Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          SizedBox(height: 8,),
         // LogoLoginAuth(),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("Welcome!",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,)
            ),
            SizedBox(height: 10,),
            Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Sign upppp with your email and password",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,)
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomFormFieldLogin(
                mycontroller:controller.email,
                hinttext: "Enter email",labeltext: "Email",icondata: Icons.email_outlined,)
              ),
              SizedBox(height: 12,),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomFormFieldLogin(
                mycontroller:controller.phone,
                hinttext: "Enter phone",labeltext: "phone",icondata: Icons.phone, )
              ),
              SizedBox(height: 12,),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomFormFieldLogin(
                mycontroller:controller.password,
                hinttext: "Enter pass",labeltext: "Password",icondata: Icons.lock_clock_outlined, )
              ),
              Container(
                padding: EdgeInsets.only(top: 15,left: 10,right: 10),
                child: Text("Forgot password?",textAlign: TextAlign.end,),
              ),
              CustomButtonAuth( text:"Login",onPressed: (){},),
              SizedBox(height: 10,),
              CustomTextSignup(text1: "dont have account   ",text2: "Sign Up",
              onTap:
              ()
              {
                controller.GotoSignIn();
              }
              ),
        ],
      ),
    ),
    
    );
  }
}