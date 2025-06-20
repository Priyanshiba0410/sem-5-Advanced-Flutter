import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dialog_theme_controller.dart';

class Dialog_Theme extends StatelessWidget {
  final ThemeDialogController controller = Get.put(ThemeDialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog with Themes"),
        actions: [
          Obx(() => IconButton(
            icon: Icon(controller.isDark.value ? Icons.wb_sunny : Icons.nightlight),
            onPressed: controller.toggleTheme,
          )),
        ],
      ),backgroundColor: Colors.pink.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: controller.showCustomDialog,
          child: Text("Show Custom Dialog"),
        ),
      ),
    );
  }
}
