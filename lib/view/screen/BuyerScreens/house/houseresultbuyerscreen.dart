import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/BuyerAfterHouseController/searchhousepage_controller.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/house/housebuyerdataview.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/house/housebuyersearchscreen.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/buyerdrawer.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/itemresultobject.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResultBuyerScreen extends StatelessWidget {
  final String type;
  final List<HouseModel> houses;
  const ResultBuyerScreen({super.key, required this.type, required this.houses});


  


  @override
  Widget build(BuildContext context) {
     EmailController emailController=Get.put(EmailController());
     final SearchHouseController controller1 = Get.put(SearchHouseController(houses));
     String x=emailController.getData("username");
     print("$x               + here");
   if(type=="House"){
    return Scaffold(

      drawer: BuyerSlider(),
      appBar: AppBar(backgroundColor: ColorApp.orange,
        
      actions: [
        IconButton(
          icon: Icon(Icons.search), // Icon on the right side (trailing)
          onPressed: ()async {
            // try{
            // Add your trailing icon functionality here
            List<HouseModel> houses = await fetchHousesApi();
            Get.to(SearchHousePage(houses: houses));
            //}
            // catch(e){

           
            //  print("error::::::: $e");
            //}
          },
        ),
        
      ],
    ),

  





   body: GetBuilder<SearchHouseController>(builder: (controller1) {
  return ListView.builder(
    itemCount: controller1.x.length, // Use the controller's x list length
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Get.to(HouseBuyerDataView(house: houses[index],));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: AspectRatio(
                  aspectRatio: 1.5, // Set the aspect ratio as needed
                  child: Image.asset('assets/images/App_logo.png', fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: 4),
              Text(
                "${controller1.x[index].name}", // Access the data from the controller's x list
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 29.0),
                child: Text(
                  "${controller1.x[index].information}", // Access the data from the controller's x list
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      );
    },
  );


}),

    
    
    
    
    
    
    
    );
 
 
  }
  else{
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorApp.orange,
          actions: [
            IconButton(
              icon: Icon(Icons.search), // Icon on the right side (trailing)
              onPressed: () async{
                
                // await List<HouseModel> f=fetchHousesApi();
                // // Add your trailing icon functionality here
                // Get.to(SearchResultTemplate(searchResults: f));
              },
            ),
          ],
        ),
        body: Container(
          child: Text("Default Content for other types"),
        ),
      );
  }
  
  }



}


Future<List<HouseModel>> fetchHousesApi() async {
  var request = http.Request('GET', Uri.parse(Applink.PropertyHouseGetAll));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    String responseBody = await response.stream.bytesToString();
    List<dynamic> jsonData = json.decode(responseBody);
    //jsonData[0].toString().

    List<HouseModel> houseList = [];
    for (var data in jsonData) {
      HouseModel house = HouseModel(
          id: data['ID'],
        name: data['Name'],
        sellingstate: data['SellingState'],
        rentper: data['RentPer'],
        area: data['Area'],
        numofrooms: data['NumOfRooms'],
        price: data['Price'],
       // images: List<String>.from(data['images']),
        information: data['Information'],
      );
      houseList.add(house);
    }

    return houseList;
  } else {
    throw Exception('Failed to fetch houses from the API');
  }
}


