import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:tecmilibro/src/pages/categorias_page.dart';
import 'package:tecmilibro/src/pages/home_page.dart';


class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _page = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromRGBO(12, 45, 108, 1.0),
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
            items: <Widget>[  
            JelloIn(
              delay: Duration(milliseconds: 1000),
              child: Icon(
                Icons.keyboard_arrow_up,
                size: 30,
                color: Colors.white,
              ),
            ),
            JelloIn(
              delay: Duration(milliseconds: 1000),
              child: Icon(
                Icons.computer,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _callPage(_page));
  }

  _callPage(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return Categorias();
      case 1:
        return HomePage();
      default:
        return PrincipalPage();
    }
  }
}
