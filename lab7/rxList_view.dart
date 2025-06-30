import 'package:advanced_flutter/lab7/rxList_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxlistView extends StatelessWidget {
  RxlistView({Key? key}) : super(key: key);

  final RxlistController controller = Get.put(RxlistController());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RxList with Favorite"),
      ),backgroundColor: Colors.pink.shade300,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(
                      hintText: "Enter item",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    if (textController.text.trim().isNotEmpty) {
                      controller.addItem(textController.text.trim());
                      textController.clear();
                    }
                  },
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.items[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          controller.isFavorite[index]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: controller.isFavorite[index]
                              ? Colors.red
                              : Colors.grey,
                        ),
                        onPressed: () => controller.toggleFavorite(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.black),
                        onPressed: () => controller.removeItem(index),
                      ),
                    ],
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}
