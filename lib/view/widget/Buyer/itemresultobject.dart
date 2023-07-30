import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/resultimagecontroller.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:get/get.dart';

class SearchResultTemplate extends StatelessWidget {
  final List<HouseModel> searchResults;

  const SearchResultTemplate({Key? key, required this.searchResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context) => DoctorsScreen() ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1.0), //(x,y)
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: searchResults.length,
                        itemBuilder: (context, index) {
                          HouseModel object = searchResults[index];
                          return GetBuilder<ImageController>(
                            init: ImageController(object.images),
                            builder: (controller) {
                              return GestureDetector(
                                onTap: () {
                                  // Handle onTap event for the focused container if needed
                                  controller.isFocused.value = true;
                                },
                                onTapDown: (details) {
                                  controller.isFocused.value = true;
                                },
                                onTapUp: (details) {
                                  controller.isFocused.value = false;
                                },
                                child: Container(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        object.title,
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      // Show the images in a slider using PageView.builder
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: PageView.builder(
                                          itemCount: object.images.length,
                                          itemBuilder: (context, index) {
                                            return Image.asset(
                                              object.images[index],
                                              width: 100,
                                              height: 100,
                                            );
                                          },
                                          controller: controller.pageController,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      // Add other object values here as needed
                                      // ...
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: 10,),
                      Text(" hghghh   ",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(right: 29.0),
                        child: Text("المعدة والامعاء والجيوب",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
                      )
                    ],
                  ),
                ),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
