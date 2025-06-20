import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_snackbar_controller.dart';

class CustomSnackbarView extends StatelessWidget {
  final CustomSnackbarController controller = Get.put(CustomSnackbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom SnackBar - GetX MVC")),backgroundColor: Colors.pink.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: controller.showTopSuccessSnackbar,
              child: Text("Show Top Success SnackBar"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.showBottomErrorSnackbar,
              child: Text("Show Bottom Error SnackBar"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.showCenterInfoSnackbar,
              child: Text("Show Center Info SnackBar"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
