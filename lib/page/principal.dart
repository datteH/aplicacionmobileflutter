import 'package:flutter/material.dart';
/*import 'package:flutter_application_parcial_2/page/pagina1.dart';*/
import 'package:flutter_application_parcial_2/page/pagina2.dart';
import 'package:flutter_application_parcial_2/page/pagina3.dart';
import 'package:flutter_application_parcial_2/page/pagina4.dart';
import 'package:flutter_application_parcial_2/page/pagina5.dart';
import 'package:flutter_application_parcial_2/themes/colors.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro,
      body: getbody(),
      bottomNavigationBar: getfooter(),
    );
  }

  Widget getbody() {
    return IndexedStack(
      index: paginaIndex,
      children: [/*Paguia1(), */ pagina2(), pagina3(), pagina4(), pagina5()],
    );
  }

  Widget getfooter() {
    List iconosItems = [
      /*LineIcons.plusCircle,*/
      LineIcons.utensilSpoon,
      LineIcons.list,
      LineIcons.shoppingBasket,
      LineIcons.user,
    ];
    List textItems = [/*"",*/ "Recipes", "Plans", "Groceries", "Account"];
    return Container(
        height: 90,
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(textItems.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        paginaIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          iconosItems[index],
                          color: paginaIndex == index
                              ? rojo
                              : blanco.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? acua
                                  : blanco.withOpacity(0.5)),
                        )
                      ],
                    ),
                  );
                }))));
  }
}
