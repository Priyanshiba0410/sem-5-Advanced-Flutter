class Student {
  int? id;
  String name;
  int age;
  String department;

  Student({
    this.id,
    required this.name,
    required this.age,
    required this.department,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'name': name,
      'age': age,
      'department': department,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
      department: map['department'],
    );
  }

  @override
  String toString() {
    return 'Student{id: $id, name: $name, age: $age, department: $department}';
  }
}
