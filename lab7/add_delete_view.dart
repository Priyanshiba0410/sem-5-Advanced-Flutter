import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_delete_controller.dart';

class AddDeleteView extends StatelessWidget {
  final AddDeleteController controller = Get.put(AddDeleteController());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RxList Example")),backgroundColor: Colors.pink.shade100,
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
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    final text = textController.text.trim();
                    if (text.isNotEmpty) {
                      controller.addItem(text);
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
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => controller.removeItem(index),
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
