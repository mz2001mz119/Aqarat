import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';

class BuyerHomePage extends StatelessWidget {
  const BuyerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorApp.orange,),
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
      
      
      
      
      
      
      
      
      
      ,











      body:            
      //here f 
      SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(children:[
        
        
           //تسوق حسب الفئة------------------------------------------------------
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 5,
                        height: 40,
                        color: ColorApp.orange,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Categories: ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //List of type--------------------------------------------------------
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // ShopsScreen().setTitle("للأطفال - ".tr + city!);
                                  // ShopsScreen().setType('للأطفال');
                                  // ShopsScreen().setCity(city);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ShopsScreen()));
                                },
                                child: Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(35),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage:

                                        AssetImage('assets/images/home.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "House",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // ShopsScreen().setTitle("للسيدات - ".tr + city!);
                                  // ShopsScreen().setType('للسيدات');
                                  // ShopsScreen().setCity(city);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ShopsScreen()));
                                },
                                child: Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(35),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage:
                                        AssetImage('assets/images/residential-block.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Apartement",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // ShopsScreen().setTitle("للرجال - ".tr + city!);
                                  // ShopsScreen().setType('للرجال');
                                  // ShopsScreen().setCity(city);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ShopsScreen()));
                                },
                                child: Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(35),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage:
                                        AssetImage('assets/images/hotel1.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                " Hotel\n room",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // ShopsScreen().setTitle("انارة - ".tr + city!);
                                  // ShopsScreen().setType('انارة');
                                  // ShopsScreen().setCity(city);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ShopsScreen()));
                                },
                                child: Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(35),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage:
                                        AssetImage('assets/images/land.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Land",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                
                 
                      ],
                    ),
                  ),
                ),
        
      
      
      
      
      
                      Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 5,
                        height: 40,
                        color: ColorApp.orange,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Aqarat ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // ShopsScreen().setTitle(
                          //   city,
                          // );
                          // ShopsScreen().setCity(
                          //   city,
                          // );
      
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ShopsScreen()));
                        },
                        child: Text(
                          "Show all",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
                  Container(
                margin: EdgeInsets.only(top: 20),
                height:310,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                   
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Image.asset('assets/images/App_logo.png',width: 205,height: 209,),
                            SizedBox(height: 10,),
                            Text("Drift For Men",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(right: 29.0),
                              child: Text("متجر الكتروني مختص ببيع ارقى واجمل الأحذية الرجالية الاصلية ,تفضل بزيارة متجرنا واحصل على اجمل الاحذية",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
                            )
                          ],),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Image.asset('assets/images/App_logo.png',width: 400,height: 200,),
                            SizedBox(height: 10,),
                            Text("الروافد للادوات المنزلية",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(right: 29.0),
                              child: Text("متجر الكتروني مختص ببيع جميع الادوات المنزلية,تفضل بزيارة متجرنا لكي تجعل بيتك اجمل",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
                            )
                          ],),
                      ),
                      SizedBox(width: 15,),
                     
                    ],
                  ),
                ),
              ),
            //  SizedBox(height: 200,),
            
      
                                        Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 5,
                        height: 40,
                        color: ColorApp.orange,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Recommendation ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // ShopsScreen().setTitle(
                          //   city,
                          // );
                          // ShopsScreen().setCity(
                          //   city,
                          // );
      
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ShopsScreen()));
                        },
                        child: Text(
                          "Show all",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
      
      
      











      
      
                  Container(
                margin: EdgeInsets.only(top: 20),
                height:310,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                   
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Image.asset('assets/images/App_logo.png',width: 205,height: 209,),
                            SizedBox(height: 10,),
                            Text("Drift For Men",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(right: 29.0),
                              child: Text("متجر الكتروني مختص ببيع ارقى واجمل الأحذية الرجالية الاصلية ,تفضل بزيارة متجرنا واحصل على اجمل الاحذية",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
                            )
                          ],),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Image.asset('assets/images/App_logo.png',width: 400,height: 200,),
                            SizedBox(height: 10,),
                            Text("الروافد للادوات المنزلية",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(right: 29.0),
                              child: Text("متجر الكتروني مختص ببيع جميع الادوات المنزلية,تفضل بزيارة متجرنا لكي تجعل بيتك اجمل",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
                            )
                          ],),
                      ),
                      SizedBox(width: 15,),
                     
                    ],
                  ),
                ),
              ),
            //  SizedBox(height: 200,),
            


      
      
                
        
        
        ]),
      )
    );
  }
}