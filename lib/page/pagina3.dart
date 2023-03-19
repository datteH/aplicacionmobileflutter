import 'package:flutter/material.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';
import '../json/json.dart';

class pagina3 extends StatefulWidget {
  const pagina3({super.key});

  @override
  State<pagina3> createState() => _pagina3State();
}

class _pagina3State extends State<pagina3> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plans',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.list),
              SizedBox(width: 8.0),
              Text('PLANS'),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre en la tarjeta',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el nombre en la tarjeta';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Número de tarjeta',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el número de la tarjeta';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: DropdownButtonFormField(
                        items: meses.map((mes) {
                          return DropdownMenuItem(
                            value: mes,
                            child: Text(mes),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: 'Mes de expiración',
                        ),
                        validator: (value) {
                          if (value == null) {
                            return 'Por favor seleccione el mes de expiración';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Año de expiración',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor ingrese el año de expiración';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Código de seguridad',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el código de seguridad';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // procesar registro de tarjeta de crédito
                          print('Registro de tarjeta de crédito exitoso');
                        }
                      },
                      child: Text('PROCESAR')),
                ),
              ],
            ),
          ),
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
