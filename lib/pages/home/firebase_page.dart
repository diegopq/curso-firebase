import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curso_firebase/pages/home/widgets/favorites_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: onPress,
        child: Icon(Icons.read_more),
      ),
      appBar: AppBar(
        title: const Text("Lenguajes favoritos"),
      ),
      body: const FavoriteList(),
    );
  }

  onPress() async {
    final frameworks = FirebaseFirestore.instance.collection('frameworks');
    try {
      final batch = FirebaseFirestore.instance.batch();
      final docu = await frameworks.get();
      // ignore: avoid_function_literals_in_foreach_calls
      docu.docs.forEach((document) {
        batch.delete(document.reference);
      });
      await batch.commit();
    } catch (e) {
      print(e);
    }
  }
}

//===== Ejemplos de consultas ========
//1.- accedemos a los documentos y al documento en especifico con
//el indice 0
// final docs = await users.get();
// print(docs.docs[0]);

//2.-accedemos a un documento en especifico usando el id del documento
// final doc = await users.doc('79jvVcdOL2pYbKY5ugwT').get();
// print(doc.data());

//3.-accedemos a datos anidados en un documento, ya sea por la
//notacion de punto o con el objeto FieldPath
// final doc = await users.doc('79jvVcdOL2pYbKY5ugwT').get();
// print(doc.get('direccion.latitud'));
// print(doc.get(FieldPath(['direccion', 'latitud'])));

//4.-filtrado de documentos con where
// final docs =
// await users.where('likes', isLessThan: 3, isGreaterThan: 0).get();
// print(docs.docs[0].data());

//5.- Limitar una consulta
// final docs = await users.limit(2).get();
// final docs =
//           await users.orderBy('likes').limitToLast(2).get();
//       print(docs.docs[0].data());

//6.- iniciar una consulta en un punto especifico
//final docs = await users.orderBy('likes').startAt([0]).endAt([2]).get();
// final documentSnapshot = await users.doc('CNMudIouHyZ5rz9xrssu').get();
// final docs = await users
//     .orderBy('likes')
//     .startAfterDocument(documentSnapshot)
//     .get();
// print(docs.docs[0].data());

//7.- Crear documento con id automatico
//final ide = FirebaseFirestore.instance.collection('ide');
// await ide.add({
//         'nombre': 'vscode',
//         'descargas': 120300,
//         'caracteristicas': {
//           'modoDebug': true,
//           'extensiones': ['vue', 'dart']
//         }
//       });

//8.- Crear documento con id especifico
// await ide.doc('id-especifico').set({
//         'nombre': 'atom',
//         'descargas': 120300,
//       });

//9.- Actulizar datos de documentos con y sin la notacion de punto

// await ide.doc('datos-anidados').update({
//         'nombre': 'nano'],
//       });

// await ide.doc('datos-anidados').update({
//         'caracteristicas.extensiones.vue': false,
//       });

//10.- Borrar documento completo
//final ide = FirebaseFirestore.instance.collection('ide');
// try {
//   await ide.doc('datos-anidados').delete();
// } catch (e) {
//   print(e);
// }

//11.- Borrar dato en documento
// await len
//           .doc('EIGGn3u5u4mK6tNMmGqA')
//           .update({'image': FieldValue.delete()});

// 12.- Escrituras en batch, en este caso borra todos los documentos de una coleccion
// WriteBatch batch = FirebaseFirestore.instance.batch();
//       final docu = await frameworks.get();
//       docu.docs.forEach((document) {
//         batch.delete(document.reference);
//       });
//       await batch.commit();
