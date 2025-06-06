import 'package:advanced_flutter/lab2/list_model.dart';

class UserController {
  List<User> _users = [
    User(name: 'disha'),
    User(name: 'yasha'),
    User(name: 'priyanshiba'),
    User(name: 'devanshi'),
  ];
  List<User> get users => _users;
  void toggleFavorite(int index) {
    _users[index].isFavorite = !_users[index].isFavorite;
  }
}