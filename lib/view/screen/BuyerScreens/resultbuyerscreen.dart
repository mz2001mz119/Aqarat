import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/buyerdrawer.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/itemresultobject.dart';
import 'package:flutter_course_mytest/view/widget/buyerhouseresult.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResultBuyerScreen extends StatelessWidget {
  final String type;
  final List<HouseModel> houses;
  const ResultBuyerScreen({super.key, required this.type, required this.houses});


  


  @override
  Widget build(BuildContext context) {
     EmailController emailController=Get.put(EmailController());
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
            Get.to(SearchResultTemplate(searchResults: houses));
            //}
            // catch(e){

              print("${houses[0].id}");
    print("${houses[0].area}");
    print("${houses[0].information}");
    print("${houses[0].name}");
    print("${houses[0].numofrooms}");
    print("${houses[0].price}");
    print("${houses[0].rentper}");
    print("${houses[0].sellingstate}");
            //  print("error::::::: $e");
            //}
          },
        ),
        
      ],
    ),

  





    body: BuyerHouseResult(objects: houses),
    
    
    
    
    
    
    
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


