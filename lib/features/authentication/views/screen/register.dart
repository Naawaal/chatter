import 'package:chatter/features/authentication/views/screen/login_screen.dart';
import 'package:chatter/features/authentication/viewsmodels/auth_vm.dart';
import 'package:chatter/features/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/widgets/app_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthVM>(
      create: (context) => AuthVM(context: context),
      builder: (context, child) {
        final vm = Provider.of<AuthVM>(context);
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _headerBuilder(),
                          const SizedBox(height: 20),
                          _inputBuilder(vm),
                          const SizedBox(height: 30),
                          _loginButtonBuilder(vm),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    _registerBuilder(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
          'Register to Chatter Box',
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
  Widget _inputBuilder(final AuthVM vm) {
    return Column(
      children: [
        AppInput(
          hintText: 'Name',
          controller: vm.nameController,
        ),
        const SizedBox(height: 10),
        AppInput(
          hintText: 'Email',
          controller: vm.emailController,
        ),
        const SizedBox(height: 10),
        AppInput(
          hintText: 'Password',
          isPassword: true,
          controller: vm.passwordController,
        ),
      ],
    );
  }

  //----------------------------- _buttonBuilder -------------------------------------------------//
  Widget _loginButtonBuilder(final AuthVM vm) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            value: 'Register',
            onPressed: () {
              vm.registerUser();
            },
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
          "Already have an account? ",
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
          child: Text(
            'Log-in',
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
