import 'package:flutter/material.dart';
import 'package:flutter_app_peliculas/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas App',
      initialRoute: 'home',
      routes: {
        'home': (__) => HomeScreen(),
        'details': (__) => DetailsScreen(),
      },
    );
  }
}
