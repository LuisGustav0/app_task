import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color get primaryColor => const Color(0xFF5C77CE);
  static Color get primaryColorLight => const Color(0xFFABC8f7);

  static Color get white => Colors.white;
  static Color get black => Colors.black;
  static Color get red => Colors.red;

  static Color get greyWithAlpha50 => Colors.grey.withAlpha(50);

  static ThemeData get theme => ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: primaryColorLight,
    textTheme: GoogleFonts.mandaliTextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
      )
    )
  );
}
