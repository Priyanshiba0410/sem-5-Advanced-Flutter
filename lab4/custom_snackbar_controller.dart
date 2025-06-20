import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbarController extends GetxController {
  void showTopSuccessSnackbar() {
    Get.snackbar(
      "Success",
      "Operation completed successfully!",
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(10),
      borderRadius: 10,
    );
  }

  void showBottomErrorSnackbar() {
    Get.snackbar(
      "Error",
      "Something went wrong!",
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(10),
      borderRadius: 10,
    );
  }

  void showCenterInfoSnackbar() {
    Get.snackbar(
      "Info",
      "This is a center-aligned message.",
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP, // Center is not supported in GetX snackbar
      duration: Duration(seconds: 2),
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 250),
      borderRadius: 10,
    );
  }
}
