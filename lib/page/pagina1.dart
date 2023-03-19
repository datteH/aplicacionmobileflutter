import 'package:flutter/material.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';

class Paguia1 extends StatefulWidget {
  const Paguia1({super.key});

  @override
  State<Paguia1> createState() => _Paguia1State();
}

class _Paguia1State extends State<Paguia1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gbpagina1,
      /*appBar: getAppBar(),*/
      //body: getBody(),
    );
  }

  /*ListView.builder(
    itemCount: products.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            products[index].imageUrl,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  )*/

  /* Widget getAppBar() {
    return AppBar(
      backgroundColor: rojo,
      leading: IconButton(
          onPressed: null,
          icon: Text(
            "Editar",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          )),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.edit),
        )
      ],
    );
  }*/

  Widget getBody() {
    return ListView();
  }
}
