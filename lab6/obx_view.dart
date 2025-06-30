import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'obx_controller.dart';

class ObxView extends StatelessWidget {
  ObxView({Key? key}) : super(key: key);
  final ObxController controller = Get.put(ObxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reactive GetX (Obx + obs)'),),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: Obx(() => Text(
          'Counter: ${controller.counter.value}',
          style: const TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
