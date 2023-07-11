import 'package:disenos_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_design': (_) => const ScrollDesignScreen(),
          'home_screen': (_) => const HomeScreen(),
        });
  }
}
