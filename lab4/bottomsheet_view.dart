import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bottomsheet_controller.dart';

class BottomSheet_View extends StatelessWidget {
  final BottomSheetController controller = Get.put(BottomSheetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet with List"),),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: controller.showBottomSheetDialog,
          child: Text("Show BottomSheet"),
        ),
      ),
    );
  }
}
