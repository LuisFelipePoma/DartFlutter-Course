import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orangeAccent;
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    //Theme Appbar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    //Textbutton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // FloatingAction
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.indigo,

      //Theme Appbar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //Textbutton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),

      // FloatingAction
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));
}
