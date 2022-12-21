import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const AppInput({
    super.key,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 14,
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
