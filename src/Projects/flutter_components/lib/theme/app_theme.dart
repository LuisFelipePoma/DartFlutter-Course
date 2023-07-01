import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    //Theme Appbar
    appBarTheme: const AppBarTheme(
      color: Colors.indigo,
      elevation: 0,
    ),
  );
  static final ThemeData lightTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    //Theme Appbar
    appBarTheme: const AppBarTheme(
      color: Colors.indigo,
      elevation: 0,
    ),
  );
}
