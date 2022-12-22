import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData get lightPalette {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xfff1f2f2),
      fontFamily: GoogleFonts.montserrat().fontFamily,
      colorScheme: ThemeData(brightness: Brightness.light)
          .colorScheme
          .copyWith(background: Colors.white, primary: Colors.deepPurple),
    );
  }

  get darkPalette => null;
}

ThemeData get darkPalette {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ThemeData(brightness: Brightness.dark).colorScheme.copyWith(
          background: const Color(0xff212121),
        ),
  );
}
