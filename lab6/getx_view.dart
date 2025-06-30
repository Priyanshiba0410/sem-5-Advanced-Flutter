// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../mvc/counter_view/counter_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   final CounterController controller = Get.put(CounterController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('GetX Non-Reactive (MVC)')),
//       body: Center(
//         child: GetBuilder<CounterController>(
//           builder: (controller) => Text(
//             'Counter: ${controller.countervalue}',
//             style: const TextStyle(fontSize: 24),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: controller.incrementCounter,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
