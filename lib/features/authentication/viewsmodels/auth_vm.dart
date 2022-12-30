import 'package:chatter/features/authentication/services/auth_services.dart';
import 'package:flutter/cupertino.dart';

class AuthVM extends ChangeNotifier {
  final BuildContext context;
  AuthVM({
    required this.context,
  });

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get nameController => _nameController;

  void login() async {
    await AuthServices.loginUser(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  void registerUser() async {
    await AuthServices.registerUser(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }
}
