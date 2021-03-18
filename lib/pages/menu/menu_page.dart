import 'package:curso_firebase/core/routes/route_name.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                child: Text('Ir a Firebase'),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.firebase);
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                child: Text('Ir a Multi-idioma'),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.multiLan);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
