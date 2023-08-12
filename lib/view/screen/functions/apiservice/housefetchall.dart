
import 'dart:convert';

import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:flutter_course_mytest/linkapi.dart';
import 'package:http/http.dart' as http;

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
