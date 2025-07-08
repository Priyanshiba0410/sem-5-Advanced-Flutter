import 'package:advanced_flutter/lab9/student_db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'department_model.dart';


class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();

  Database? _db;

  Future<Database> get database async {
    return _db ??= await _initDB();
  }

  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'college.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Enable Foreign Keys
    await db.execute("PRAGMA foreign_keys = ON");

    // Department Table
    await db.execute('''
      CREATE TABLE departments (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');

    // Student Table with Foreign Key
    await db.execute('''
      CREATE TABLE students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        age INTEGER NOT NULL,
        departmentId INTEGER,
        FOREIGN KEY (departmentId) REFERENCES departments (id) ON DELETE CASCADE
      )
    ''');
  }

  // Insert Department
  Future<int> insertDepartment(Department dept) async {
    final db = await database;
    return await db.insert('departments', dept.toMap());
  }

  // Insert Student
  Future<int> insertStudent(Student student) async {
    final db = await database;
    return await db.insert('students', student.toMap());
  }
}
