import 'package:flutter/material.dart';

class MyTile extends StatelessWidget{
  final int cont;
  final int producto;
  const MyTile({Key? key, required this.cont, required this.producto});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: AssetImage('img/image${cont +1}.jpg'),
          ),
            borderRadius: BorderRadius.circular(10),
            color:  Colors.grey[200]
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed:() {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
              ),
              child: const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.blueGrey,
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (producto == 0)...[
                    Text('Moto Modelo 2014'), Text('Precio de 10.000.000'),
                  ] else if(producto == 1)...[
                    Text('Moto Modelo 2015'), Text('Precio de 11.000.000'),
                  ] else if(producto == 2)...[
                    Text('Moto Modelo 2016'), Text('Precio de 12.000.000'),
                  ] else if(producto == 3)...[
                    Text('Moto Modelo 2017'), Text('Precio de 13.000.000'),
                  ] else if(producto == 4)...[
                    Text('Moto Modelo 2018'), Text('Precio de 14.000.000'),
                  ] else if(producto == 5)...[
                    Text('Moto Modelo 2019'), Text('Precio de 15.000.000'),
                  ] else if(producto == 6)...[
                    Text('Moto Modelo 2020'), Text('Precio de 16.000.000'),
                  ] else if(producto == 7)...[
                    Text('Moto Modelo 2021'), Text('Precio de 17.000.000'),
                  ] else if(producto == 8)...[
                    Text('Moto Modelo 2022'), Text('Precio de 18.000.000'),
                  ] else if(producto == 9)...[
                    Text('Moto Modelo 2023'), Text('Precio de 19.000.000',)
                  ],
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                alignment: Alignment.bottomRight,
              ),
              onPressed: (){},
              child: const Text('Mas Detalles'),
            ),
          ],
        ),
      ),
    );
  }
}