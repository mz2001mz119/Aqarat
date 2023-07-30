import 'package:flutter_course_mytest/core/class/statusrequest.dart';
import 'package:flutter_course_mytest/core/functions/handlingdata.dart';
import 'package:flutter_course_mytest/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController{
  TestData testData=TestData(Get.find());

  List data=[];

  late StatusRequest statusRequest;

  getData() async{
    statusRequest=StatusRequest.loading;
    var response=await testData.getData();
    statusRequest=handlingData(response);
    if(StatusRequest.success==statusRequest){
      if(response['status']=="success"){
      data.addAll(response['data']);
    }
    else{
      statusRequest=StatusRequest.failure;

    }
    }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}