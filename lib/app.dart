import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/authentication/views/screen/login_screen.dart';

class ChatterBox extends StatelessWidget {
  const ChatterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const LoginScreen(),
    );
  }
}
