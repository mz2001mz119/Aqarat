import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:get/get.dart';

class SearchHouseController extends GetxController{
  late  List<HouseModel> x=<HouseModel>[].obs;
 



SearchHouseController(List<HouseModel> objects){
  x.addAll(objects);
}

void setXList(List<HouseModel> objects){
x.addAll(objects);
update();
}





   Future<List<HouseModel>> searchAction(List<HouseModel> newx,String x1,String x2, String x3) async {
    //textname=x1;
    String searchTermName = x1.toLowerCase();
     String searchTermSellingState = x2.toLowerCase();
     String searchTermNumOfRooms = x3.toLowerCase();

    List<HouseModel> filteredData = [];

    for (int i = 0; i < newx.length; i++) {
      HouseModel house = newx[i];
      final String itemNameLowerCase = house.name.toLowerCase();
      final String itemSellingStateLowerCase = house.sellingstate.toLowerCase();
      final String itemNumOfRoomsLowerCase = house.numofrooms.toString();

      final bool matchesName = searchTermName.isEmpty || itemNameLowerCase.contains(searchTermName);
      final bool matchesSellingState = searchTermSellingState.isEmpty || itemSellingStateLowerCase.contains(searchTermSellingState);
      final bool matchesNumOfRooms = searchTermNumOfRooms.isEmpty || StringIntEqual(searchTermNumOfRooms,itemNumOfRoomsLowerCase);

      if (matchesName && matchesSellingState && matchesNumOfRooms) {
        filteredData.add(house);
      }
    }
      searchTermName = "";
    searchTermSellingState = "";
     searchTermNumOfRooms = "";

    // Display filtered data in the console
    print('Filtered Data: $filteredData');

    if (filteredData.isEmpty) {
      x.clear();
      setXList(newx);
      return newx;
    } else {
      x.clear();
      setXList(filteredData);
     
      newx = filteredData;
      filteredData.clear();
      return newx;
    }
  }
  



}

bool StringIntEqual(String x1,String x2){
  int? int1value=int.tryParse(x1);
  int? int2value=int.tryParse(x2);
  if(x1==x2)
  return true;
  else
  return false;

}



