
import 'package:advanced_flutter/lab2/signup_model.dart';

class SignupController {
  UserModel? _user;

  bool validateFields({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) {
    if (name.isEmpty || email.isEmpty || phone.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      return false;
    }
    if (password != confirmPassword) {
      return false;
    }
    return true;
  }

  void registerUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) {
    _user = UserModel(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );

    // Here you can add logic to save user or call APIs
    print("User Registered: ${_user!.name}, ${_user!.email}, ${_user!.phone}");
  }
}
