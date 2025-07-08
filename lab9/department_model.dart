class Department {
  int? id;
  String name;

  Department({this.id, required this.name});

  Map<String, dynamic> toMap() {
    final map = {'name': name};
    if (id != null) map['id'];
    return map;
  }

  factory Department.fromMap(Map<String, dynamic> map) {
    return Department(
      id: map['id'],
      name: map['name'],
    );
  }
}
