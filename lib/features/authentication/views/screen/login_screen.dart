import 'package:chatter/features/authentication/views/screen/register.dart';
import 'package:chatter/features/shared/widgets/app_button.dart';
import 'package:chatter/utils/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../shared/widgets/app_input.dart';
import 'forget_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _headerBuilder(),
                  const SizedBox(height: 20),
                  _inputBuilder(),
                  const SizedBox(height: 30),
                  _loginButtonBuilder(context),
                  const SizedBox(height: 20),
                  _forgetPasswordBuilder(context),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _registerBuilder(context),
          ],
        ),
      ),
    );
  }

//------------------------ _HeaderBuilder -----------------------------------------------//
  Widget _headerBuilder() {
    return Column(
      children: [
        Image.asset(
          'assets/png/auth.png',
          color: Colors.deepPurple,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20.0),
        const Text(
          'Welcome to Chatter Box',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Keep Your Data Safe',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

//-------------------------- _inputBuilder ---------------------------------------------//
  Widget _inputBuilder() {
    return Column(
      children: const [
        AppInput(
          hintText: 'Email',
        ),
        SizedBox(height: 10),
        AppInput(
          hintText: 'Password',
          isPassword: true,
        ),
      ],
    );
  }

  //----------------------------- _buttonBuilder -------------------------------------------------//
  Widget _loginButtonBuilder(final BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            value: 'Login',
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.chatListScreen);
            },
          ),
        ),
      ],
    );
  }

  //------------------------------- _forgetPasswordBuilder ----------------------------------------------//
  Widget _forgetPasswordBuilder(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const ForgetScreen())));
      },
      child: Text(
        'Forgert Password?',
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  //------------------------------- _registerBuilder ----------------------------------------------//
  Widget _registerBuilder(final BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const RegisterScreen())));
          },
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
  //--------------------------------------------------------------------------------//
}
