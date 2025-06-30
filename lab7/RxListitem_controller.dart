import 'package:get/get.dart';

import 'RxListitem_model.dart';


class RxlistitemController extends GetxController {
  var items = <ItemModel>[
    ItemModel("Apple"),
    ItemModel("Banana"),
    ItemModel("Orange"),
  ];

  var favoriteStatus = <bool>[false, false, false].obs;
  void toggleFavorite(int index) {
    favoriteStatus[index] = !favoriteStatus[index];
  }
}
