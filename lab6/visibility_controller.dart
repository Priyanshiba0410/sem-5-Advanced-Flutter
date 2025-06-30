import 'package:get/get.dart';

class VisibilityController extends GetxController {
  RxBool isVisible = true.obs;

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }
}
