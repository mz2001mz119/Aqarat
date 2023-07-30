import 'package:flutter_course_mytest/core/class/statusrequest.dart';

handlingData(response){
if(response is StatusRequest){
return response;

}
else{
  return StatusRequest.success;
}
}