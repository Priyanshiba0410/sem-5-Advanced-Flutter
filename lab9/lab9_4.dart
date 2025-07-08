import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._();
  factory DBHelper() => _instance;
  DBHelper._();

  Database? _db;

  Future<Database> get database async {
    return _db ??= await initDB();
  }

  Future<Database> initDB() async {
    final path = join(await getDatabasesPath(), 'college.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Enable foreign keys
        await db.execute("PRAGMA foreign_keys = ON");

        // Create Department table
        await db.execute('''
          CREATE TABLE department (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
          )
        ''');

        // Create Student table with foreign key
        await db.execute('''
          CREATE TABLE student (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            age INTEGER,
            departmentId INTEGER,
            FOREIGN KEY (departmentId) REFERENCES department(id)
          )
        ''');
      },
    );
  }

  // Insert Department
  Future<int> insertDepartment(String name) async {
    final db = await database;
    return await db.insert('department', {'name': name});
  }

  // Insert Student with departmentId
  Future<int> insertStudent(String name, int age, int departmentId) async {
    final db = await database;
    return await db.insert('student', {
      'name': name,
      'age': age,
      'departmentId': departmentId,
    });
  }

  // Fetch students with department info (JOIN)
  Future<List<Map<String, dynamic>>> fetchStudentsWithDepartment() async {
    final db = await database;
    return await db.rawQuery('''
      SELECT student.id, student.name, student.age, department.name AS departmentName
      FROM student
      INNER JOIN department ON student.departmentId = department.id
    ''');
  }
}
