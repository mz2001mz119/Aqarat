import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/test_controller.dart';
import 'package:flutter_course_mytest/core/class/statusrequest.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      body:GetBuilder<TestController>(builder: (controller){
        if(controller.statusRequest==StatusRequest.loading){
          return Center(child: Text("Loading"),);

        }
        else if(controller.statusRequest==StatusRequest.serverfailure)
        {
          return Center(child: Text("Sever failure"),);

        }
        else if(controller.statusRequest==StatusRequest.failure)
        {
          return Center(child: Text(" failure no data"),);

        }
        else{
          return ListView.builder(
            itemCount:controller.data.length ,
            itemBuilder: (context,index){
              return Text("${controller.data}");

          });
        }

      },),
    );
  }
}