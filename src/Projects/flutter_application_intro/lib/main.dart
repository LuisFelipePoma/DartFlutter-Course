import 'package:flutter/material.dart';
import 'package:flutter_application_intro/screens/counter_screen.dart';
// import 'package:flutter_application_intro/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: CounterScreen(),
    );
  }
}
