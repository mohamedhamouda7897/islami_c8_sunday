import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightColor,
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.bold, color: lightColor),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: lightColor),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: lightColor, size: 30),
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white)));
  static ThemeData darkTheme = ThemeData();
}
