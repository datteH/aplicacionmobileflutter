import 'package:flutter/material.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';

import '../json/json.dart';

class pagina4 extends StatefulWidget {
  const pagina4({super.key});

  @override
  State<pagina4> createState() => _pagina4State();
}

class _pagina4State extends State<pagina4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GROCERIES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.tealAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.shop),
              SizedBox(width: 8.0),
              Text('GROCERIES'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: categorias.length,
          itemBuilder: (BuildContext context, int indexCategoria) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    categorias[indexCategoria],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(productos[indexCategoria].length,
                      (indexProducto) {
                    return Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            productos[indexCategoria][indexProducto],
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Agregar al carrito'),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
