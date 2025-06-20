import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DialogController extends GetxController {
  void showAlertDialog() {
    Get.defaultDialog(
      title: "Alert",
      middleText: "This is an important message.",
      textConfirm: "OK",
      textCancel: "Cancel",
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back(); // close dialog
        Get.snackbar("Confirmed", "You pressed OK");
      },
      onCancel: () {
        Get.snackbar("Cancelled", "You pressed Cancel");
      },
    );
  }
}
