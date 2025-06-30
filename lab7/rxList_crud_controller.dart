import 'package:get/get.dart';

class RxlistCrudController extends GetxController {
  var users = <Map<String, dynamic>>[].obs;

  void addUser(String name, int age) {
    users.add({"name": name, "age": age});
  }

  void updateUser(int index, String name, int age) {
    users[index] = {"name": name, "age": age};
  }

  void deleteUser(int index) {
    users.removeAt(index);
  }
}
