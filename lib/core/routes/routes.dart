import 'package:curso_firebase/core/routes/route_name.dart';
import 'package:curso_firebase/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const kInitialRoute = RouteName.home;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _args = settings.arguments;

    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
