import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  final String name;
  final int likes;
  final String asset;

  //? QueryDocumentSnapshot contiene la data del documento de la coleccion
  //? que se le pasa al widget
  final QueryDocumentSnapshot _snapshot;

  LanguageItem(this._snapshot)
      : asset = _snapshot.get("image") as String,
        likes = _snapshot.get("likes") as int,
        name = _snapshot.get("nombre") as String;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FlutterLogo(
        size: 45,
      ),
      title: Text(name),
      subtitle: Text("Total de likes: $likes"),
      trailing: IconButton(
        icon: const Icon(Icons.thumb_up),
        iconSize: 20,
        color: Colors.lightGreen,
        onPressed: _updateVote,
      ),
    );
  }

  void _updateVote() {
    //? se hace referencia a la coleccion usando FirebaseFirestore.intance
    //? runTransaction() nos asegura que no haya problemas de concurrencia al actualizar los datos

    FirebaseFirestore.instance.collection("frameworks").add({"nombre": "Vue"});
    FirebaseFirestore.instance.runTransaction((transaction) async {
      //?secureSnapshot contiene una nueva copia de los datos del lenguaje
      final secureSnapshot = await transaction.get(_snapshot.reference);
      print(secureSnapshot.reference.id);
      final currentLikes = secureSnapshot.get("likes") as int;

      //? cambia el contenido del campo indicado
      transaction.update(secureSnapshot.reference, {"likes": currentLikes + 1});
    });
  }
}
