import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () => setState(() => currentIndex = 0),
          ),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.pie_chart_outline),
            onPressed: () => setState(() => currentIndex = 1),
          ),
          label: 'Gráfica',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.supervised_user_circle_outlined),
            onPressed: () => setState(() => currentIndex = 2),
          ),
          label: 'Usuarios',
        ),
      ],
    );
  }
}
