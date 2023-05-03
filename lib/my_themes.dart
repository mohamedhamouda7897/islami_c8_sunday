import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightColor,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightColor,
          onPrimary: Colors.black54,
          secondary: Colors.grey.shade300,
          onSecondary: Colors.black54,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: lightColor,
          surface: Colors.white,
          onSurface: Colors.black54),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 18, fontWeight: FontWeight.bold, color: lightColor),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black54),
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
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkColor,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: darkColor,
          surface: darkColor,
          onSurface: yellowColor),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 18, fontWeight: FontWeight.bold, color: yellowColor),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellowColor,
          selectedLabelStyle: TextStyle(color: yellowColor),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: darkColor)));
}
