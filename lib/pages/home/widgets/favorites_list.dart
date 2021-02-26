import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'error_widget.dart';
import 'language_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getStream(),
      builder: (context, languages) {
        //si hay un error
        if (languages.hasError) {
          print(languages.error);
          return const ErrorCustomWidget();
        }

        //si hay datos
        if (languages.hasData) {
          final data = languages.data;

          //y los datos no son nulos
          if (data != null) {
            return ListView.builder(
              itemExtent: 80.0,
              itemCount: data.docs.length,
              itemBuilder: (context, index) => LanguageItem(data.docs[index]),
            );
          } else {
            return const ErrorCustomWidget();
          }
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

//funcion que recibe la data de la coleccion especificada,
//? 1: se realiza un query y se ordenan los datos de manera descendente,
//? tambien se pueden usar metodos como limit() o where() para filtrar los datos
//? 2: el snapshot regresa un stream que mantiene la escucha de la coleccion, cuando
//? los datos de la coleecion cambian los nuevos valores son emitidos,
//? los datos siempre son sincronizados automaticamente con la base de datos
  static Stream<QuerySnapshot> getStream() => FirebaseFirestore.instance
      .collection("lenguajes")
      .orderBy("likes", descending: true) // 1
      .snapshots(); // 2

//?funcion que mantiene la escucha en un documento en especifico
//?tambien regresa un stream que se puede usar en un StreamBuilder
//final Stream<DocumentSnapshot> document = FirebaseFirestore.instance
//      .collection("lenguajes").doc("EIGGn3u5u4mK6tNMmGqA").snapshots();

}

//si no se requiere real-time se pueden ejecutar lecturas unicas

//? para obtener los documentos de una colleccion, estas lecturas regresan un
//? Future en lugar de un Stream
//final Future<QuerySnapshot> documents = FirebaseFirestore.instance.collection("lenguajes").get()

//? para obtener la data de un documento, estas lecturas regresan un
//? Future en lugar de un Stream
//final Future<DocumentSnapshot> data = FirebaseFirestore.instance.collection("lenguajes")
//.doc("EIGGn3u5u4mK6tNMmGqA").get()
