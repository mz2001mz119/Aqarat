import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:flutter_course_mytest/view/widget/Seller/SellerDrawer.dart';
import 'package:get/get.dart';

import '../functions/apiservice/housefetchall.dart';

class CustomTabController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;
  late List<HouseModel> hh = <HouseModel>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    hh = await fetchHousesApi();
   
    tabController = TabController(length: 4, vsync: this);
    // update();
  }




   Future<void> fetchDataForTab(int tabIndex) async {
    try {
      // Fetch data for the specified tab index
      if (tabIndex == 0) {
        hh.clear();
        List<HouseModel> temp=await fetchHousesApi();
        hh.addAll(temp);
        
      //  hh.re();
        update();
        // Fetch data for tab 1
      } else if (tabIndex == 1) {
        // Fetch data for tab 2
      }
    } catch (e) {
      // Handle error
    }
  }










  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

class SellerProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CustomTabController customTabController1=Get.find<CustomTabController>();  
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorApp.orange,
            title: Text('Properties'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              isScrollable: true,
              onTap: (index){
                if(index==0){
                  customTabController1.fetchDataForTab(0);
                }
              },
              controller: customTabController1.tabController,
              tabs: [
                Tab(text: 'Houses'),
                Tab(text: 'Apartements'),
                 Tab(text: 'Lands'),
                  Tab(text: 'Hotel Rooms'),
                
              ],
            ),
          ),
          body: TabBarView(
            controller: customTabController1.tabController,
            children: [




GetBuilder<CustomTabController>(builder: (customTabController1) {
  return Column(
    children: [
      Flexible(flex: 6,
        child: ListView.builder(
          itemCount: customTabController1.hh.length, // Use the controller's x list length
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
              //  Get.to(HouseBuyerDataView(house: houses[index],));
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                child: Container(
                   decoration: BoxDecoration(border: Border.all(color: ColorApp.orange,width: 2),borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                     //   decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0.5)),
                        child: AspectRatio(
                          aspectRatio: 1.5, // Set the aspect ratio as needed
                          child: Image.asset('assets/images/App_logo.png', fit: BoxFit.fill,),
                        ),
                      ),
                      
                      SizedBox(height: 4),
                      Text(
                        "${customTabController1.hh[index].name}", // Access the data from the controller's x list
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 29.0),
                        child: Text(
                          "${customTabController1.hh[index].information}", // Access the data from the controller's x list
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   Flexible(flex: 1,child: 
   
   Container(
  
    decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),),
    width: double.infinity,
    height: double.infinity,
     child: Padding(
      
       padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20),
       child: ElevatedButton(onPressed: ()
       {
        
       }
       , style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(ColorApp.orange)),child: Text("Add New Property",style: TextStyle(color: Colors.white),)),
     ),
   ))
   
    ],
  );


})
             
             
             
             
             , Center(
                child: Text(customTabController1.hh[0].name),
              ),
               Center(
                child: Text(customTabController1.hh[0].name),
              ),
               Center(
                child: Text(customTabController1.hh[0].name),
              ),
            ],
          ),
        );
    
  
  
  
  }
}









