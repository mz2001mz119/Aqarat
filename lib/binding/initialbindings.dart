import 'package:flutter_course_mytest/core/class/crud.dart';
import 'package:get/get.dart';

class initialbindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Crud());
  }
  
}