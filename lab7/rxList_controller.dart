import 'package:get/get.dart';

class RxlistController extends GetxController {
  var items = <String>[].obs;
  var isFavorite = <bool>[].obs;

  void addItem(String item) {
    items.add(item);
    isFavorite.add(false);
  }

  void removeItem(int index) {
    items.removeAt(index);
    isFavorite.removeAt(index);
  }

  void toggleFavorite(int index) {
    isFavorite[index] = !isFavorite[index];
  }
}
