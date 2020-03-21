import 'package:flutter/material.dart';
import 'package:tecmilibro/src/pages/categorias/page_categorias.dart';
import 'package:tecmilibro/src/pages/detalle-catalogo.dart';
import 'package:tecmilibro/src/pages/detalle.dart';
import 'package:tecmilibro/src/pages/home_page.dart';
import 'package:tecmilibro/src/pages/intro_page.dart';
import 'package:tecmilibro/src/pages/lecturas_page.dart';
import 'package:tecmilibro/src/pages/libro_detalle.dart';
import 'package:tecmilibro/src/pages/principal.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Libro Tec',
      debugShowCheckedModeBanner: false,
      initialRoute: ('intro'),
      routes: {
        'intro': (BuildContext context) => IntroPage(),
        'detalle': (BuildContext context) => LibroDetalle(),
        'home': (BuildContext context) => HomePage(),
        'detallea': (BuildContext context) => LibroADetalle(),
        'principal': (BuildContext context) => PrincipalPage(),
        'lecturas' : (BuildContext context) => LecturasPage(),
        'catalogo-detalle' : (BuildContext context) => CatalogoDetalle(),
        'categorias' : (BuildContext context) => CategoriasPage()
      },
    );
  }
}
