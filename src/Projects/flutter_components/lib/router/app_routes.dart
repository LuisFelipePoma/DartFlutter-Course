import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home_max_sharp,
      name: 'homeScreen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'listView1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'listView2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_sharp,
      name: 'alertScreen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'CardScreen',
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   "home": (BuildContext context) => const HomeScreen(),
  //   "listview1": (BuildContext context) => const Listview1Screen(),
  //   "listview2": (BuildContext context) => const Listview2Screen(),
  //   "alert": (BuildContext context) => const AlertScreen(),
  //   "card": (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
