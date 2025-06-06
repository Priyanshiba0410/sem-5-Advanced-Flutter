// lib/view/student_view.dart

import 'package:advanced_flutter/lab1/student_controller.dart';
import 'package:advanced_flutter/lab1/student_model.dart';
import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  final StudentController controller = StudentController();

  @override
  Widget build(BuildContext context) {
    Student student = controller.getStudentDetails();

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${student.name}", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Age: ${student.age}", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("ID: ${student.id}", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}