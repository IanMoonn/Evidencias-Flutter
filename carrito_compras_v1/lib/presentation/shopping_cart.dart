import 'package:flutter/material.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;
  int count = 0;
  int aum = 0;

  Carrito(this._cart, {super.key});

  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);
  var aum = 0;

  List<ListaProductos> _cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          'Detalles del producto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.pink,
        ),
      ),
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _cart.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 9
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                  image: NetworkImage(
                                      _cart[index].imageURL.toString()
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8,
                                              right: 8
                                          ),
                                          child: Center(
                                            child: Text(
                                              _cart[index].nombre.toString(),
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            IconButton(icon: const Icon(Icons.remove_circle), onPressed: () {aum--;});
                                            Text('$aum');
                                            IconButton(icon: const Icon(Icons.add_circle), onPressed: () {aum--;});
                                          ],//
                                        ),
                                        Text(
                                          _cart[index].precio.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                          ],
                          )
                        ],
                      ),
                    );
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}