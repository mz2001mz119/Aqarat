import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:flutter_course_mytest/core/localization/translation.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer:  
      
      
      
      
      
      
      
      
      
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
      
      
      
      
      
      
      
      
      
      
      
       ,    
       //stop n 
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            height:size.height * 0.9,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,

                    image: AssetImage('assets/images/Admin_Home_background.jpg') as ImageProvider
                )),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    //stop here
                    children: <Widget>[
                      Container(
                        height: 65,
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 4,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(
                                //   "الدكتور محيي",
                                //   style: TextStyle(
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.bold,
                                //       letterSpacing: 2,
                                //       fontStyle: FontStyle.italic,
                                //       fontSize: 17.5),
                                // ),
                                Text(
                                  'Admin',
                                  style: TextStyle(
                                      color: ColorApp.orange,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      fontSize: 30),
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            Spacer(),
                            Builder(
                              builder: (context) => IconButton(
                                icon: new Icon(
                                  Icons.menu,
                                  size: 38,
                                  color: Colors.white,
                                ),
                                onPressed: () =>
                                    Scaffold.of(context).openDrawer(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Spacer(),
                      Container(
                        width: screenHight * 0.6,
                        height: 520,
                        child: SingleChildScrollView(
                          child: Container(
                            height: 520,
                            width: screenHight*0.6,
                            child: GridView.count(
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.all(10),
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 1 / 1.9,
                              crossAxisCount: 3,
                              // shrinkWrap: true,
                              primary: false,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                          
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>//هون بتحط اسم الكلاس للصفحة اللي بدك تنتقل عليها
                                    //         AccountScreen()));
                                  },
                                  child: Container(
                                    width:screenWidth / 5,
                                    height:screenWidth /9,
                                    child: Card(
                                      elevation: 15,
                                      shadowColor: ColorApp.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          //هون بتغير الصورة
                                          Image.asset(
                                            'assets/images/verified-account.png',
                                            height: 105,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            //هون الاسم
                                            'My Account',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                               
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             AccountScreen()));
                                  },
                                  child: Container(
                                    width:screenWidth / 5,
                                    height:screenWidth /9,
                                    child: Card(
                                      elevation: 15,
                                      shadowColor: ColorApp.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/ads.png',
                                            height: 105,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Ads',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             AccountScreen()));
                                  },
                                  child: Container(
                                    width:screenWidth / 5,
                                    height:screenWidth /9,
                                    child: Card(
                                      elevation: 15,
                                      shadowColor: ColorApp.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/realestate.png',
                                            height: 105,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Properties',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             AccountScreen()));
                                  },
                                  child: Container(
                                    width:screenWidth / 5,
                                    height:screenWidth /9,
                                    child: Card(
                                      elevation: 15,
                                      shadowColor: ColorApp.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/logout.png',
                                            height: 105,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Sign Out',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}