import 'package:flutter/material.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';

class pagina5 extends StatefulWidget {
  const pagina5({super.key});

  @override
  State<pagina5> createState() => _pagina5State();
}

class _pagina5State extends State<pagina5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gbpagina5,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.verified_user),
            SizedBox(width: 8.0),
            Text('GROCERIES'),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Alan Handerson Bran Miranda',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
