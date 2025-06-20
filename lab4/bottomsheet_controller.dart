import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  final List<String> items = List.generate(5, (index) => "Item ${index + 1}");

  void showBottomSheetDialog() {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(16),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: items.length,
          separatorBuilder: (_, __) => Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.label),
              title: Text(items[index]),
              onTap: () {
                Get.back(); // Close bottom sheet
                Get.snackbar("Selected", items[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
