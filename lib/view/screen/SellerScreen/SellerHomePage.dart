import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/view/screen/SellerScreen/SellerProperties.dart';
import 'package:flutter_course_mytest/view/widget/Seller/SellerDrawer.dart';
import 'package:get/get.dart';
import 'package:flutter_course_mytest/core/localization/translation.dart';

import '../../../data/model/housesmodel.dart';
import '../functions/apiservice/housefetchall.dart';

class SellerHomePage extends StatelessWidget {
  const SellerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    EmailController emailController=Get.put(EmailController());
    CustomTabController mytabcontroller=Get.put(CustomTabController());
    String x=emailController.getData("username");
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: 
      Text("Aqarat Palestine")
      ,),
      drawer:  
      
      
      
      
      SellerDrawer()
      
      
      
      
      
      
      
      
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
                           
                                // ),
                                Text(
                                  '$x',
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

                                //stop
                                GestureDetector(
                                  onTap: () async{
                                    List<HouseModel>  houses_cont_1= await fetchHousesApi(); 
                                   Get.to(SellerProperties());
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