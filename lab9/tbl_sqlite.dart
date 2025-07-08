import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class StudentDBHelper {
  static final StudentDBHelper _instance = StudentDBHelper._internal();
  factory StudentDBHelper() => _instance;
  StudentDBHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    return _database ??= await _initDB();
  }

  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "Student.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    // Create TBL_Student
    await db.execute('''
      CREATE TABLE TBL_Student (
        StudentId INTEGER PRIMARY KEY AUTOINCREMENT,
        EnrollmentNo TEXT NOT NULL,
        Name TEXT NOT NULL,
        RollNo INTEGER
      )
    ''');

    // Create University
    await db.execute('''
      CREATE TABLE University (
        UniversityId INTEGER PRIMARY KEY AUTOINCREMENT,
        Name TEXT NOT NULL
      )
    ''');

    // Create Sem
    await db.execute('''
      CREATE TABLE Sem (
        SemId INTEGER PRIMARY KEY AUTOINCREMENT,
        Sem INTEGER NOT NULL
      )
    ''');

    print("All tables created in Student.db");
  }
}
