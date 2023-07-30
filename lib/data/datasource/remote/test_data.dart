import 'package:flutter_course_mytest/core/class/crud.dart';
import 'package:flutter_course_mytest/linkapi.dart';

class TestData{
  Crud crud;
  TestData(this.crud);


  getData() async{
    var response= await crud.postData(Applink.SignupUser, {});
    return response.fold((l) => l, (r) => r);
  }
}