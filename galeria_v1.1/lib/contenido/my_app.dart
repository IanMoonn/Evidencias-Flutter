import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Galeria con Container",
      home: Scaffold(
        appBar: AppBar(
          title:  const Text("Galeria construida con Containers"),
        ),
        body: Center(child: _buildImageColumn(),),
        bottomNavigationBar: const BottomAppBar(
          child: Text(
          "Juan Sebastian Vidales",
            style: TextStyle(
            color: Colors.blue,
            fontSize: 30.0,
            )
          ),
        ),
      ),
    );
  }

  Widget _buildImageColumn(){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: ClipRect(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            children: [
              _buildImageRow(1),
              _buildImageRow(3),
            ],
          ),
        )
      ),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        width: 150,
        //height: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset("images/pic$imageIndex.jpg"),
      ),
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}