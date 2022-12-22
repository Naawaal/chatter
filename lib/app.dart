import 'package:chatter/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'features/authentication/views/screen/login_screen.dart';

class ChatterBox extends StatelessWidget {
  const ChatterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightPalette,
      darkTheme: AppTheme().darkPalette,
      home: const LoginScreen(),
    );
  }
}
