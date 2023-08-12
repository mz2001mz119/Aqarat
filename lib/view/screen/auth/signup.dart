import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/auth/signup_controller.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:flutter_course_mytest/view/widget/login/customformfieldauth.dart';
import 'package:flutter_course_mytest/view/widget/login/cutombuttonauth.dart';
import 'package:flutter_course_mytest/view/widget/login/textsignup.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller =Get.put(SignUpControllerImp());
   // TextEditingController emailController = TextEditingController();
   // TextEditingController passwordController = TextEditingController();
    return Scaffold(
    appBar: AppBar(
      backgroundColor: ColorApp.backgroundcolor,
      centerTitle: true,
     elevation: 0.0,
      title: Text("Signup",style: Theme.of(context).textTheme.headline1!,),
    ),
    body:  Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          SizedBox(height: 8,),
         // LogoLoginAuth(),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("Sign up",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,)
            ),
            SizedBox(height: 10,),
            Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Discover Properties of your interest with us !",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,)
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
                mycontroller:controller.firstName,
                hinttext: "Enter firstname",labeltext: "firstname",icondata: Icons.text_format, )
              ),
              SizedBox(height: 12,),
               Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomFormFieldLogin(
                mycontroller:controller.lastName,
                hinttext: "Enter lastName",labeltext: "lastName",icondata: Icons.text_format, )
              ),
              SizedBox(height: 12,),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomFormFieldLogin(
                mycontroller:controller.password,
                hinttext: "Enter pass",labeltext: "Password",icondata: Icons.lock_clock_outlined, )
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 15,left: 10,right: 10),
              //   child: Text("Forgot password?",textAlign: TextAlign.end,),
              // ),
              CustomButtonAuth( text:"Sign up",onPressed: ()async{

                String email=controller.email.text;
                String password=controller.password.text;
                String firstname=controller.firstName.text;
                String lastname=controller.lastName.text;
                await SignupWithApi(firstname,lastname,email ,password );
                Get.back();



              },),
              SizedBox(height: 10,),
             
        ],
      ),
    ),
    
    );
  }
}







 SignupWithApi(String a, String b,String c,String d) async {
  // final EmailController emailController=Get.put(EmailController());




var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse(Applink.SignupUser));
request.body = json.encode({
  "firstName": "$a",
  "lastName": "$b",
  "email": "$c",
  "password": "$d"
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print('Status Code: ${response.statusCode}');
  print('Error: ${await response.stream.bytesToString()}');
  print(response.reasonPhrase);
}





  }

