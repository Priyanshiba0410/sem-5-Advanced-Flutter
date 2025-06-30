import 'package:get/get.dart';

class AddDeleteController extends GetxController {
  var items = <String>[].obs;

  void addItem(String item) {
    items.add(item);
  }

  void removeItem(int index) {
    items.removeAt(index);
  }
}
