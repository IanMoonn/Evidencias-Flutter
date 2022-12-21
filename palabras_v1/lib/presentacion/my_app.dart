import 'package:flutter/material.dart';
import '../presentacion/random_words.dart' show RandomWords;

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Generador de Palabras",
      home: const RandomWords(),
    );
  }
}