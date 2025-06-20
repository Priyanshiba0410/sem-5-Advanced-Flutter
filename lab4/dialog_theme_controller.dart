import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeDialogController extends GetxController {
  final RxBool isDark = false.obs;

  void toggleTheme() {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  void showCustomDialog() {
    Get.dialog(
      AlertDialog(
        backgroundColor: Get.isDarkMode ? Colors.grey : Colors.white,
        title: Text(
          'Custom Dialog',
          style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
        ),
        content: Text(
          'This is a themed custom dialog using GetX.',
          style: TextStyle(color: Get.isDarkMode ? Colors.black : Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Close'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
