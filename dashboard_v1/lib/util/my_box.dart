import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  final int count;
  const MyBox({Key? key, required this.count});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage('img/pic${count +1}.jpg'),
            fit: BoxFit.fill
          ),
          color: Colors.white
        ),
      ),
    );
  }
}