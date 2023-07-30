import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EmailController extends GetxController {
  // Create a reference to GetStorage
  final box = GetStorage();

  // Example function to set data
  void setData(String key, dynamic value) {
    box.write(key, value);
  }

  // Example function to get data
  dynamic getData(String key) {
    return box.read(key);
  }
}
