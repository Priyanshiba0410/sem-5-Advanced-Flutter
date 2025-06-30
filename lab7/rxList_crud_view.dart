import 'package:advanced_flutter/lab7/rxList_crud_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxlistCrudView extends StatelessWidget {
  final RxlistCrudController controller = Get.put(RxlistCrudController());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  void showUserDialog({int? index}) {
    if (index != null) {
      nameController.text = controller.users[index]['name'];
      ageController.text = controller.users[index]['age'].toString();
    } else {
      nameController.clear();
      ageController.clear();
    }

    Get.defaultDialog(
      title: index == null ? "Add User" : "Update User",
      content: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Age"),
          ),
        ],
      ),
      textConfirm: "Save",
      textCancel: "Cancel",
      onConfirm: () {
        final name = nameController.text.trim();
        final age = int.tryParse(ageController.text.trim()) ?? 0;

        if (name.isNotEmpty) {
          if (index == null) {
            controller.addUser(name, age);
          } else {
            controller.updateUser(index, name, age);
          }
          Get.back();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CRUD with RxList")),backgroundColor: Colors.pink.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showUserDialog(),
        child: const Icon(Icons.add),
      ),
      body: Obx(() => ListView.builder(
        itemCount: controller.users.length,
        itemBuilder: (context, index) {
          final user = controller.users[index];
          return ListTile(
            leading: CircleAvatar(child: Text(user['age'].toString())),
            title: Text(user['name']),
            subtitle: Text("Age: ${user['age']}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => showUserDialog(index: index),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => controller.deleteUser(index),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
