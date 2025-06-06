
import 'package:advanced_flutter/lab1/student_model.dart';

class StudentController {
  Student _student = Student(name: "Yasha", age: 21, id: "111");

  Student getStudentDetails() {
    return _student;
  }
}