import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkmode : ${Preferences.isDarkmode} '),
            const Divider(),
            Text('Genero : ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de Usuario : ${Preferences.name}'),
            const Divider(),
          ],
        ));
  }
}
