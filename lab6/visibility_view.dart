import 'package:advanced_flutter/lab6/visibility_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisibilityScreen extends StatelessWidget {
  VisibilityScreen({Key? key}) : super(key: key);

  final VisibilityController controller = Get.put(VisibilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RxBool Visibility Toggle")),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Visibility(
              visible: controller.isVisible.value,
              child: const Text(
                " Tap to Hide me !",
                style: TextStyle(fontSize: 24),
              ),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.toggleVisibility,
              child: Obx(() => Text(controller.isVisible.value
                  ? "Hide Text"
                  : "Show Text")),
            ),
          ],
        ),
      ),
    );
  }
}
