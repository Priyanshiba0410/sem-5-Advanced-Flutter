
import 'package:get/get.dart';

class StudentController extends GetxController {
  // RxList of strings
  var students = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadStudents();
  }

  void loadStudents() {
    students.addAll([
      'Ravi Patel',
      'Aisha Khan',
      'Mehul Desai',
      'Neha Sharma',
      'Amit Joshi',
    ]);
  }
}
