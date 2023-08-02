import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/auth/login_controller.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/core/functions/alertexitapp.dart';
import 'package:flutter_course_mytest/core/localization/changelocal.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/view/widget/login/customformfieldauth.dart';
import 'package:flutter_course_mytest/view/widget/login/cutombuttonauth.dart';
import 'package:flutter_course_mytest/view/widget/login/logoauth.dart';
import 'package:flutter_course_mytest/view/widget/login/textsignup.dart';
import 'package:get/get.dart';

class Login extends GetView<LocalController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =Get.put(LoginControllerImp());
   EmailController emailController=Get.put(EmailController());
  //final EmailController emailController = Get.find<EmailController>();
    return Scaffold(
    appBar: AppBar(
      backgroundColor: ColorApp.backgroundcolor,
      centerTitle: true,
     elevation: 0.0,
      title: Text("2".tr,style: Theme.of(context).textTheme.headline1!,),
    ),
    body:  WillPopScope(
      onWillPop: alertExitApp,
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 8,),
            LogoLoginAuth(),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Welcome!",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,)
              ),
              SizedBox(height: 10,),
              Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Sign in with your email and password",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,)
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                
                child: CustomFormFieldLogin(
                  
                  mycontroller: controller.email,
                  
                  hinttext: "Enter email",labeltext: "Email",icondata: Icons.email_outlined,)
                ),
                SizedBox(height: 12,),
                GetBuilder<LoginControllerImp>(builder: (controller)=>
                Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomFormFieldLogin(
                  obsucetext: controller.isShowpass,
                  onTapIcon: ()
                  {
                    controller.showpass();
                  },
                  mycontroller: controller.password,
                  hinttext: "Enter pass",labeltext: "Password",icondata: Icons.lock_clock_outlined,)
                )
                
                
                
                ),
                Container(
                  padding: EdgeInsets.only(top: 15,left: 10,right: 10),
                  child: Text("Forgot password?",textAlign: TextAlign.end,),
                ),
                CustomButtonAuth( text:"Login",onPressed: () async {
              //    LoginControllerImp controller = Get.find<LoginControllerImp>();

    // Get the email and password values from the text controllers
                 String email = controller.email.text;
                String password = controller.password.text;
                 await controller.loginWithApi(email, password);
                 String? x=emailController.getData("username");
                 
                 if("$x"=="tasneem@gmail.com"){
                 Get.offAllNamed(AppRoute.adminhomepage);}
                 else if(x=="ajjk@gmail.com"){
                  Get.offAllNamed(AppRoute.buyerhomepage);

               
                  print("$x");
                  print("tasneem@gmail.com");
                 }
                 print(x);
                 print("      object");
                },),
                SizedBox(height: 10,),
                CustomTextSignup(text1: "dont have account   ",text2: "Sign Up",
                onTap:
                ()
                {
                   controller.gotoSignup()();
                }
                ),
          ],
        ),
      )
      
    ),
    
    );
  }
}