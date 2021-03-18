import 'package:curso_firebase/core/routes/route_name.dart';
import 'package:curso_firebase/pages/home/firebase_page.dart';
import 'package:curso_firebase/pages/menu/menu_page.dart';
import 'package:curso_firebase/pages/multi-idioma/multi_lan_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const kInitialRoute = RouteName.menu;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final _args = settings.arguments;

    switch (settings.name) {
      case RouteName.firebase:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case RouteName.menu:
        return MaterialPageRoute(builder: (_) => MenuPage());
        break;
      case RouteName.multiLan:
        return MaterialPageRoute(builder: (_) => MultiLangPage());
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
