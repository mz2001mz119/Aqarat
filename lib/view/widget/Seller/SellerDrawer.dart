import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/core/constant/routes.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/view/screen/SellerScreen/SellerHomePage.dart';
import 'package:get/get.dart';

class SellerDrawer extends StatelessWidget {
  const SellerDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    EmailController controller1=Get.find<EmailController>();
    return 
    
    
    
    
      
      Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 30),
                child: Image.asset(
                  'assets/images/App_logo.png',
                  width: 180,
                ),
              ),


              Container(
                width: 300,
                height: 1,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Main Screen",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorApp.orange),
                ),
              ),
              ListTile(
                title: Text("Main Screen"),
                leading: Icon(Icons.store, color: ColorApp.orange),
                onTap: () {
                  Get.offAll(SellerHomePage());
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => DoctorMainScreen()));
                },
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                width: 300,
                height: 1,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Information",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorApp.orange),
                ),
              ),
              ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: ColorApp.orange),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => DoctorAccountScreen()));

                },
              ),
              ListTile(
                title: Text("Advertisments"),
                leading: Icon(Icons.add_chart, color: ColorApp.orange),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AddSatisfactoryScreen()));
                },
              ),
              ListTile(
                title: Text("My Properties"),
                leading: Icon(Icons.real_estate_agent_outlined,
                    color: ColorApp.orange),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => PatientsScreen()));
                },
              ),
            


              SizedBox(
                height: 0,
              ),
              Container(
                width: 300,
                height: 1,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Application",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorApp.orange),
                ),
              ),


              ListTile(
                title: Text("Sign Out"),
                leading: Icon(Icons.logout, color: ColorApp.orange),
                onTap: () async {




                    controller1.removeData("username");
              String? tempx=controller1.getData("username");
              print(tempx);
              Get.offAllNamed(AppRoute.login);








                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
      )
      
      
      
      
      
      
    
    
    
    
    
    
    
    
    ;
  }
}