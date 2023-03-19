import 'package:flutter/material.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';
import '../json/json.dart';

class pagina2 extends StatefulWidget {
  const pagina2({super.key});

  @override
  State<pagina2> createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RECIPES',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.food_bank),
              SizedBox(width: 8.0),
              Text('RECIPES'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/imagenes/${products[index]}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  /*Widget getAppBar(
    title:Row(
      children: [],
    )
  )*/
}
