import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  void showBottomSheetWithHeight(double heightPercent, String label, Color color) {
    Get.bottomSheet(
      Container(
        height: Get.height * heightPercent,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      isDismissible: true,
      enableDrag: true,
    );

    // Auto close after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      if (Get.isBottomSheetOpen!) Get.back();
    });
  }
}
