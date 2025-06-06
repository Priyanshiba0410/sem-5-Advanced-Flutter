import 'package:advanced_flutter/lab2/signup_controller.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final SignupController _controller = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Form (MVC)")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => _controller.validateName(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) => _controller.validateEmail(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) => _controller.validatePhone(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) => _controller.validatePassword(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) => _controller.validateConfirmPassword(value!),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Signup Successful!')),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
