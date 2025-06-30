import 'package:advanced_flutter/lab6/textField_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextfieldView extends StatelessWidget {
  TextfieldView({Key? key}) : super(key: key);
  final TextController controller = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField RxString Binding",style: TextStyle(fontSize: 30),)),backgroundColor: Colors.pink.shade100,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Enter your name"),
              onChanged: controller.updateName, // Bind text
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
              "You typed: ${controller.name.value}",
              style: const TextStyle(fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
