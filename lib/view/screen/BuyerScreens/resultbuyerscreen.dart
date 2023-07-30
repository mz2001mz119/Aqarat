import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/buyerdrawer.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/itemresultobject.dart';
import 'package:get/get.dart';

class ResultBuyerScreen extends StatelessWidget {
  const ResultBuyerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: BuyerSlider(),
      appBar: AppBar(backgroundColor: ColorApp.orange,
        
      actions: [
        IconButton(
          icon: Icon(Icons.search), // Icon on the right side (trailing)
          onPressed: () {
            // Add your trailing icon functionality here
            Get.to(SearchResultTemplate(searchResults: HousemodelList,));
          },
        ),
        
      ],
    ),





    body: Container(child: Text("data"),),
    
    
    
    
    
    
    
    );
  }
}