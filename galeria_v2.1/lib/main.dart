import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:galeria_v2/contenido/my_app.dart';

void main(){
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}