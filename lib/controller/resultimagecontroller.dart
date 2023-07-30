import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  final List<String> images;
  RxInt currentIndex = 0.obs;
  RxBool isFocused = false.obs;
  late PageController pageController; // Make it non-final

  ImageController(this.images);

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    startImageTimer();
    super.onInit();
  }

  @override
  void onClose() {
    _timer.cancel();
    // Dispose of the pageController when the controller is closed
    pageController.dispose();
    super.onClose();
  }

  late Timer _timer;
void startImageTimer() {
  _timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
    if (!isFocused.value) {
      currentIndex.value = (currentIndex.value + 1) % images.length;
      try {
        pageController.animateToPage(
          currentIndex.value,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } catch (e) {
        // Handle the exception here (optional).
        // You can log it or perform any other action you want.
        // For example, print an error message to the console:
        print('Exception occurred: $e');
      }
    }
  });
}

}
