import 'package:get/get.dart';

class TextController extends GetxController {
  RxString name = ''.obs;

  void updateName(String newName) {
    name.value = newName;
  }
}
