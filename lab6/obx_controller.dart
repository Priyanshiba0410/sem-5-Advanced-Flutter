import 'package:get/get.dart';

class ObxController extends GetxController {
  var counter = 0.obs;
  void incrementCounter() {
    counter.value++;
  }
}
