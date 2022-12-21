import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');
  final String product;
  final int count;

  const ItemDetailsScreen({Key? key, required this.product, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('img/pic${count +1}.jpg'),
          Center(
            child: Text(
              product,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          if (product == 'Producto 1') ...[
            Text('Moto 2010 Tuneada'), Text('Precio de 4.000.000'),
          ] else if (product == 'Producto 2') ...[
            Text('Moto 2011 Tuneada'), Text('Precio de 4.500.000'),
          ] else if (product == 'Producto 3') ...[
            Text('Moto 2012 Tuneada'), Text('Precio de 5.000.000'),
          ] else if (product == 'Producto 4') ...[
            Text('Moto 2013 Tuneada'), Text('Precio de 5.500.000'),
          ] else if (product == 'Producto 5') ...[
            Text('Moto 2014 Tuneada'), Text('Precio de 6.000.000'),
          ] else if (product == 'Producto 6') ...[
            Text('Moto 2015 Tuneada'), Text('Precio de 6.500.000'),
          ] else if (product == 'Producto 7') ...[
            Text('Moto 2016 Tuneada'), Text('Precio de 7.000.000'),
          ] else if (product == 'Producto 8') ...[
            Text('Moto 2017 Tuneada'), Text('Precio de 7.500.000'),
          ] else if (product == 'Producto 9') ...[
            Text('Moto 2018 Tuneada'), Text('Precio de 8.000.000'),
          ] else if (product == 'Producto 10') ...[
            Text('Moto 2019 Tuneada'), Text('Precio de 8.500.000'),
        ],
      ],
      ),
    );
    detalles(){
      if(product == 'Producto1'){
        return Text('Y is  greater than or equal to 10');
      } else {
        return Text('Y is less than 10');
      }
    }
  }
}