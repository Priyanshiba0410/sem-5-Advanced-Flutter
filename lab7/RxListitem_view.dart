import 'package:advanced_flutter/lab7/rxList_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'RxListitem_controller.dart';

class RxlistitemView extends StatelessWidget {
  final RxlistitemController controller = Get.put(RxlistitemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite List")),
      body: Obx(() => ListView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.items[index].name),
            trailing: IconButton(
              icon: Icon(
                controller.favoriteStatus[index]
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: controller.favoriteStatus[index]
                    ? Colors.red
                    : Colors.grey,
              ),
              onPressed: () => controller.toggleFavorite(index),
            ),
          );
        },
      )),
    );
  }
}
