import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "../data/get_user_name.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super (key : key);

  @override
  State<HomePage> createState()=> _HomePageState();
}
// Esto va en Home Page.Dart//
class _HomePageState extends State<HomePage> {

  final user = FirebaseAuth.instance.currentUser!;

  //Lista de identificadores de Documentos (ID : Firestore)
  List<String> docIds = [];

  //Get docIds : Metodo para obtener la lista de identificadores de documentos
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('Cuentas').get().then(
        (snapshot) => snapshot.docs.forEach((document) {
          print(document.reference); //Imprime la lista de Documentos
          docIds.add(document.reference.id);
        })
    );
  }

//Modificamos el codigo para la lista de Documentos//
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Inicio Sesion! ${user.email!}",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: FutureBuilder(
                  future: getDocId(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                        itemCount: docIds.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: GetUserName(documentId: docIds[index]),
                              tileColor: Colors.grey[200],
                            ),
                          );
                        }
                    );
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}
