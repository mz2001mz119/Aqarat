import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/BuyerAfterHouseController/searchhousepage_controller.dart';
import 'package:flutter_course_mytest/view/screen/BuyerScreens/house/houseresultbuyerscreen.dart';
import 'package:get/get.dart';


class SearchHousePage extends StatelessWidget {
  
  final List<HouseModel> houses;
  
  const SearchHousePage({super.key, required this.houses});

  @override
  Widget build(BuildContext context) {
    final SearchHouseController controller = Get.find<SearchHouseController>();
      TextEditingController nameController = TextEditingController();
    TextEditingController roomsController = TextEditingController();
    TextEditingController sellingStateController = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First label and search field
            Text('Name'),
            TextFormField(
              controller: nameController ,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),

            // Second label and search field
            //try new 
            Text('Number Of Rooms'),
            TextFormField(
      controller: roomsController,
      decoration: InputDecoration(labelText: 'Number of Rooms'),
      keyboardType: TextInputType.numberWithOptions(signed: true, decimal: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
      ],
      validator: (value) {
        if (value != null && int.tryParse(value) != null && int.parse(value) < 0) {
          return 'Please enter a non-negative number.';
        }
        return null;
      },
    ),
            SizedBox(height: 16.0),

            // Third label and search field
            Text('Selling State'),
            TextFormField(
              controller: sellingStateController ,
              decoration: InputDecoration(labelText: 'Selling State'),
            ),
            SizedBox(height: 16.0),

            // Fourth label and search field
            

            // Action button at the end of the page
            ElevatedButton(
              
              onPressed: () async {
                  String searchTermName = nameController.text;
                String searchTermRooms = roomsController.text;
                String searchTermSellingState = sellingStateController.text;

              List<HouseModel> newList= await controller.searchAction(houses,searchTermName,searchTermSellingState,searchTermRooms);
              Get.back();
                // Perform the action when the button is pressed
                // For example, call a function or navigate to a new page
              },
              child: Text('Search',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  
  }
}










// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search Page'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // First label and search field
//             Text('Name'),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Search for Label 1'),
//             ),
//             SizedBox(height: 16.0),

//             // Second label and search field
//             Text('Label 2'),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Search for Label 2'),
//             ),
//             SizedBox(height: 16.0),

//             // Third label and search field
//             Text('Label 3'),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Search for Label 3'),
//             ),
//             SizedBox(height: 16.0),

//             // Fourth label and search field
//             Text('Label 4'),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Search for Label 4'),
//             ),
//             SizedBox(height: 16.0),

//             // Action button at the end of the page
//             ElevatedButton(
//               onPressed: () {
//                 // Perform the action when the button is pressed
//                 // For example, call a function or navigate to a new page
//               },
//               child: Text('Perform Action'),
//             ),
//           ],
//         ),
//       ),
//     );
  
//   }
// }
