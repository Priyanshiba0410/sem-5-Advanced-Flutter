class Student {
  int? id;
  String name;
  int age;
  int departmentId;

  Student({
    this.id,
    required this.name,
    required this.age,
    required this.departmentId,
  });

  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'age': age,
      'departmentId': departmentId,
    };
    if (id != null) map['id'];
    return map;
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
      departmentId: map['departmentId'],
    );
  }
}
