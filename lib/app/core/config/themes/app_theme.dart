import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color get primaryColor => const Color(0xFF5C77CE);

  static Color get primaryColorLight => const Color(0xFFABC8f7);

  static Color get backgroundColor => const Color(0xFFFAFAFA);

  static Color get white => Colors.white;

  static Color get whiteWithOpacity0_5 => Colors.white.withOpacity(0.5);

  static Color get black => Colors.black;

  static Color get blackWithOpacity0_2 => Colors.black.withOpacity(0.2);

  static Color get red => Colors.red;

  static Color get transparent => Colors.transparent;

  static ThemeData get theme => ThemeData(
        primaryColor: primaryColor,
        primaryColorLight: primaryColorLight,
        scaffoldBackgroundColor: backgroundColor,
        splashColor: transparent,
        highlightColor: transparent,
        textTheme: GoogleFonts.mandaliTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
          ),
        ),
      );
}
