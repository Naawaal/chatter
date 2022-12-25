import 'package:flutter/cupertino.dart';

class AuthVM extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void login() {
    if (_emailController.text.trim() != '' &&
        _passwordController.text.trim() != '') {
      print('Login');
    } else {
      print('Please enter email and password');
    }
  }

  void registerUser() {}
}
