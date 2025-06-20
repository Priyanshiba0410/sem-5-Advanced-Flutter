import 'package:get/get.dart';

class SnackbarController extends GetxController {
  void showSnackbar() {
    Get.snackbar(
      "Snackbar Title",
      "This is a message using GetX Snackbar.",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
}
