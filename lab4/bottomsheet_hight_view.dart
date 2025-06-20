// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'bottomsheet_controller.dart';
//
// class BottomSheetView extends StatelessWidget {
//   final BottomSheetController controller = Get.put(BottomSheetController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Custom BottomSheets - GetX MVC")),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => controller.showBottomSheetWithHeight(0.2, "Small BottomSheet", Colors.blue),
//               child: Text("Show Small BottomSheet"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => controller.showBottomSheetWithHeight(0.5, "Medium BottomSheet", Colors.green),
//               child: Text("Show Medium BottomSheet"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => controller.showBottomSheetWithHeight(0.9, "Large BottomSheet", Colors.purple),
//               child: Text("Show Full BottomSheet"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
