import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ImageController extends GetxController {
  //final List<String> images;
  final List<HouseModel> houses;
  RxInt currentIndex = 0.obs;
  RxBool isFocused = false.obs;
  late PageController pageController; // Make it non-final

  ImageController(this.houses);

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    //startImageTimer();
    super.onInit();
  }

  @override
  void onClose() {
    _timer.cancel();
    // Dispose of the pageController when the controller is closed
    pageController.dispose();
    super.onClose();
  }

   late Timer _timer;
// void startImageTimer() {
//   _timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
//     if (!isFocused.value) {
//       List<String> imagess=houses[currentIndex.value].images;
//       currentIndex.value = (currentIndex.value + 1) % imagess.length;
//       try {
//         pageController.animateToPage(
//           currentIndex.value,
//           duration: Duration(milliseconds: 500),
//           curve: Curves.easeInOut,
//         );
//       } catch (e) {
//         // Handle the exception here (optional).
//         // You can log it or perform any other action you want.
//         // For example, print an error message to the console:
//         print('Exception occurred: $e');
//       }
//     }
//   });
// }


// Future<List<HouseModel>> fetchHousesApi() async {
//   var request = http.Request('GET', Uri.parse('localhost:3000/allHouses'));

//   http.StreamedResponse response = await request.send();

//   if (response.statusCode == 200) {
//     String responseBody = await response.stream.bytesToString();
//     List<dynamic> jsonData = json.decode(responseBody);

//     List<HouseModel> houseList = [];
//     for (var data in jsonData) {
//       HouseModel house = HouseModel(
//         id: data['id'],
//         name: data['name'],
//         sellingstate: data['sellingstate'],
//         rentper: data['rentper'],
//         area: data['area'],
//         numofrooms: data['numofrooms'],
//         price: data['price'],
//         images: List<String>.from(data['images']),
//         information: data['information'],
//       );
//       houseList.add(house);
//     }

//     return houseList;
//   } else {
//     throw Exception('Failed to fetch houses from the API');
//   }
// }






}
