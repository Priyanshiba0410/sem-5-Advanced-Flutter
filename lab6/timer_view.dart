import 'package:advanced_flutter/lab6/timer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimerScreen extends StatelessWidget {
  TimerScreen({Key? key}) : super(key: key);

  final TimerController controller = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rx Timer Countdown")),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: Obx(() => Text(
          "Time Left: ${controller.countdown.value}s",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        )),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.startCountdown,
        label: const Text("Start"),
        icon: const Icon(Icons.timer),
      ),
    );
  }
}
