import 'package:advanced_flutter/lab2/validate_model.dart';

class SignupController {
  String? validateName(String value) {
    return value.isEmpty ? 'Name is required' : null;
  }
  String? validateEmail(String value) {
    return !RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)
        ? 'Enter valid email'
        : null;
  }
  String? validatePhone(String value) {
    return value.length != 10 ? 'Enter 10-digit phone number' : null;
  }
  String? validatePassword(String value) {
    return value.length < 6 ? 'Password must be 6+ characters' : null;
  }
  String? validateConfirmPassword(String password, String confirmPassword) {
    return password != confirmPassword ? 'Passwords do not match' : null;
  }
  UserModel createUser(String name, String email, String phone, String password) {
    return UserModel(name: name, email: email, phone: phone, password: password);
  }
}
