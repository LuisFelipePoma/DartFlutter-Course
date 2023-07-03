import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'List View Tipo 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listView2',
      icon: Icons.list_alt,
      name: 'List View Tipo 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_sharp,
      name: 'AlertScreen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'CardScreen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'AvatarScreen',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_fill_outlined,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
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
