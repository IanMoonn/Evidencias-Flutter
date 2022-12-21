import 'package:flutter/material.dart';
import 'home_page.dart' show HomePage;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: ('Tienda de Productos'),
    );
  }
}