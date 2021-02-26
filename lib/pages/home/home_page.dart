import 'package:curso_firebase/pages/home/widgets/favorites_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lenguajes favoritos"),
      ),
      body: const FavoriteList(),
    );
  }
}
