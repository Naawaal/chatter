import 'package:chatter/features/authentication/views/screen/login_screen.dart';
import 'package:chatter/features/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../../../shared/widgets/app_input.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

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
                  _loginButtonBuilder(),
                  const SizedBox(height: 20),
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
          'Forget your Password?',
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
        SizedBox(height: 10),
        AppInput(
          hintText: 'Email',
        ),
      ],
    );
  }

  //----------------------------- _buttonBuilder -------------------------------------------------//
  Widget _loginButtonBuilder() {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            value: 'Send Email',
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  //------------------------------- _registerBuilder ----------------------------------------------//
  Widget _registerBuilder(final BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Go to? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const LoginScreen())));
          },
          child: const Text(
            'Log-in',
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ],
    );
  }
  //--------------------------------------------------------------------------------//
}
