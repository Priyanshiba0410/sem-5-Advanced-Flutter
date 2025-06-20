import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alertMessage_controller.dart';

class HomeView extends StatelessWidget {
  final DialogController controller = Get.put(DialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MVC Dialog with GetX"),),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: controller.showAlertDialog,
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
