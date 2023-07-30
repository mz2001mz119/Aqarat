import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';

class BuyerSlider extends StatelessWidget {
  const BuyerSlider({super.key});

  @override
  Widget build(BuildContext context) {
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
                title: Text("My Favorites"),
                leading: Icon(Icons.health_and_safety, color: ColorApp.orange),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AddSatisfactoryScreen()));
                },
              ),
              ListTile(
                title: Text("Properties"),
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