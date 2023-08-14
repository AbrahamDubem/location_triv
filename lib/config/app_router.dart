import 'package:flutter/material.dart';
import 'package:location_triv/screens/home_screen.dart';

import '../location/location_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is : ${settings.name}');

    switch (settings.name) {
      case '/':
        return LocationScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();

        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
