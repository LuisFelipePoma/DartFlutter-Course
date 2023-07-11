import 'package:flutter/material.dart';
import 'package:qrreader_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qreader',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'map': (_) => const MapScreen(),
      },
    );
  }
}
