import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tecmilibro/src/models/catalogo_estatico.dart';
import 'package:tecmilibro/src/models/header.dart';
import 'package:tecmilibro/src/serch/search.dart';
import 'package:tecmilibro/src/widget/BooksTile.dart';

import 'package:tecmilibro/src/widget/FadeAnimation.dart';

class Categorias extends StatefulWidget {
  Categorias({Key key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     if (size.width < 800) {
     return Scaffold(
      backgroundColor: Color.fromRGBO(232, 236, 236, 1),
      body: vertical(context)
     );
    } else {
      return Scaffold(
      backgroundColor: Color.fromRGBO(232, 236, 236, 1),
      body: horizontal(context)
     );
    }
  }
    
    horizontal(BuildContext context){
    final size= MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BounceInDown(
                child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0)),
                color: Color.fromRGBO(12, 45, 108, 1.0),
              ),
              child: BounceInDown(
                delay: Duration(microseconds: 1000),
                child: Container(
                    child: Center(
                        child: FlareActor("assets/lee.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "lee"))),
              ),
            )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(
                      1.2,
                      Text('Categorias Centro de Informacion',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Color(0xFF3E3E3E),
                          ))),
                    SizedBox(height: 20,),
                    Container(
                      width: size.width*.8,
                      child: BounceInDown(
                            child: NeumorphicButton(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  borderRadius: BorderRadius.circular(30)),
                              style: NeumorphicStyle(
                                  lightSource: LightSource.top,
                                  color: Color.fromRGBO(  100, 30, 22  , 1),
                                  depth: 8,
                                  intensity: 1,
                                  shape: NeumorphicShape.flat,
                                  surfaceIntensity: .5),
                              onClick: () {
                                showSearch(
                                  context: context,
                                  delegate: DataSearch(),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.search,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20,),
                                 
                                  Text('Buscar',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                    ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.only(
                          bottom: 20, top: 30, right: 20),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      
                        SizedBox(
                          width: 5.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.top,
                              color: Color.fromRGBO(231, 76, 60, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.laptopCode,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Sistemas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.top,
                              color: Color.fromRGBO(211, 84, 0, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.cogs,
                                area: 'Electronica');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.cogs,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Electronica',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(52, 73, 94, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.industry,
                                area: 'Industrial');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.industry,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Industrial',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(108, 52, 131, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.folder, area: 'Gestión');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.folder,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Gestion Empresarial',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(39, 174, 96, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.leanpub, area: 'Otros');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.leanpub,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Lecturas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(36, 113, 163, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.squareRootAlt,
                                area: 'Ciencias Basicas');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.squareRootAlt,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Ciencias Basicas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Novelas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BounceInDown(
                        child: Neumorphic(
                            boxShape: NeumorphicBoxShape.roundRect(
                                borderRadius: BorderRadius.circular(5)),
                            style: NeumorphicStyle(
                                color: Color.fromRGBO(232, 236, 236, 1),
                                depth: 5,
                                intensity: 1,
                                shape: NeumorphicShape.concave,
                                surfaceIntensity: .1),
                            child: Text('Novelas! 2020',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Color(0xFF3E3E3E),
                                ))),
                      )
                    ])),
            Container(
              height: size.height*.6,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                    child: BooksTile(
                        page: 14,
                        titulo: 'reto',  
                        imagen: 'assets/reto.jpg',
                        categoria: 'Novelas',
                        descripcion:
                            'Julia está en la cúspide de su poder, pero la traición y la división familiar amenazan con echarlo todo a perder.'),
                  ),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 15,
                          titulo: 'A Corazon Abierto',
                          imagen: 'assets/acorazonabierto.jpg',
                          categoria: 'Novelas',
                          descripcion:
                              'Partiendo de un episodio ocurrido en Madrid en 1939, la narradora de esta historia cuenta la apasionada y tormentosa relación de sus padres, y cómo la personalidad desmedida de él')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'El Heredero',
                          imagen: 'assets/heredero.jpg',
                           categoria: 'Novelas',
                          descripcion:
                              'Un majestuoso landó avanza en dirección a la imponente finca de los Marqués. Con tan solo siete años, la pequeña Josefa entra a trabajar como sirvienta en la casa')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'HarryPotter',
                          imagen: 'assets/harry2.jpg',
                          categoria: 'Novelas',
                          descripcion:
                              'Tras derrotar una vez más a lord Voldemort, su siniestro enemigo en Harry Potter y la piedra filosofal')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'HarryPotter y El Legado Maldito',
                          imagen: 'assets/harry10.jpg',
                           categoria: 'Novelas',
                          descripcion:
                              'Mientras Harry se enfrenta con un pasado que se niega a permanecer donde pertenece')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          categoria: 'Novelas',
                          titulo: 'Maze Runner ',
                          imagen: 'assets/mazer.jpg',
                          descripcion:
                              'Al despertar dentro de un oscuro elevador en movimiento, lo único que Thomas logra recordar es su nombre. No sabe quién es. Tampoco hacia dónde va.')),
                ],
              ),
            ),
            //Comics
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Neumorphic(
                            boxShape: NeumorphicBoxShape.roundRect(
                                borderRadius: BorderRadius.circular(5)),
                            style: NeumorphicStyle(
                                color: Color.fromRGBO(232, 236, 236, 1),
                                depth: 5,
                                intensity: 1,
                                shape: NeumorphicShape.concave,
                                surfaceIntensity: .1),
                            child: Text('Comics! Mas leidos',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Color(0xFF3E3E3E),
                                ))),
                      )
                    ])),
            Container(
                height: size.height*.6,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 1,
                          titulo: 'Batman 2',
                          imagen: 'assets/batman2.jpg',
                          descripcion:
                              'El Joker ha sido asesinado. Su asesino es un misterio. Batman es el mejor detective del mundo. ')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 2,
                          titulo: 'Batman1',
                          imagen: 'assets/batman.jpg',
                          descripcion:
                              'El misterioso maestro criminal conocido solo como el Diseñador una vez reunió a los mayores criminales de Gotham City para planear el crimen perfecto.')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 3,
                          titulo: 'Spiderman',
                          imagen: 'assets/spiderman.jpg',
                          descripcion:
                              'Después de un encuentro devastador con el Gato Negro y sus poderes de mala suerte, el equipo de Spidey no tiene suerte y se atacan mutuamente.')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 4,
                          titulo: 'Capitan America!',
                          imagen: 'assets/cap.jpg',
                          descripcion:
                              'Steve Rogers está muerto! ¡Viva el Capitán América! Fue un héroe para millones, una inspiración para los servicios armados de Estados Unidos !')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 5,
                          titulo: 'Flash',
                          imagen: 'assets/flash.jpg',
                          descripcion:
                              'Aprenda cómo el científico policial Barry Allen, Flash de la década de 1960, se cruzó por primera vez con Jay Garrick, Flash de la década de 1940!')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 6,
                          titulo: 'Avengers',
                          imagen: 'assets/aveng.jpg',
                          descripcion: 'Arreglar'))
                ],
              ),
            ),
            //Ciencias Basicas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Neumorphic(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(5)),
                          style: NeumorphicStyle(
                              color: Color.fromRGBO(232, 236, 236, 1),
                              depth: 5,
                              intensity: 1,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .1),
                          child: Text('Ciencias Basicas!',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                                color: Color(0xFF3E3E3E),
                                //color: Colors.black
                              )),
                        ),
                      ),
                    ])),
            Container(
              height: size.height*.6,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 7,
                          titulo: 'Circuitos Electricos',
                          imagen: 'assets/circuitos.jpg',
                          descripcion:
                              'Esta obra es un libro de texto para los cursos de análisis de circuitos que se imparten en las carreras de ingeniería sistemas, ingeniería electrónica')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 8,
                          titulo: 'Fisica',
                          imagen: 'assets/fisica.jpg',
                          descripcion:
                              'Arreglar')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 9,
                          titulo: 'Calculo Diferencial!',
                          imagen: 'assets/cal-d.jpg',
                          descripcion:
                              'Arreglar')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 10,
                          titulo: 'Calculo Integral',
                          imagen: 'assets/calc-i.jpg',
                          descripcion:
                              'Arreglar')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 11,
                          titulo: 'Quimica',
                          imagen: 'assets/quimica.jpg',
                          descripcion:
                              'Arreglar')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 12,
                          titulo: 'Metodos Numericos',
                          imagen: 'assets/metodosn.jpg',
                          descripcion:
                             'Arreglar')),
                 SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 13,
                          titulo: 'Algebra Lineal',
                          imagen: 'assets/algebral.jpg',
                          descripcion:
                              'Arreglar')),
                ],
              ),
            ),
           SizedBox(height: size.height*.05,),  
        ],
        ),
    );
  }
  

    vertical(BuildContext context){
    final size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BounceInDown(
                child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0)),
                color: Color.fromRGBO(12, 45, 108, 1.0),
              ),
              child: BounceInDown(
                delay: Duration(microseconds: 1000),
                child: Container(
                    child: Center(
                        child: FlareActor("assets/lee.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "lee"))),
              ),
            )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(
                      1.2,
                      Text('Categorias Centro de Informacion',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Color(0xFF3E3E3E),
                          ))),
                    SizedBox(height: 20,),
                    Container(
                      width: size.width*.8,
                      child: BounceInDown(
                            child: NeumorphicButton(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  borderRadius: BorderRadius.circular(30)),
                              style: NeumorphicStyle(
                                  lightSource: LightSource.top,
                                  color: Color.fromRGBO(  100, 30, 22  , 1),
                                  depth: 8,
                                  intensity: 1,
                                  shape: NeumorphicShape.flat,
                                  surfaceIntensity: .5),
                              onClick: () {
                                showSearch(
                                  context: context,
                                  delegate: DataSearch(),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.search,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20,),
                                 
                                  Text('Buscar',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                    ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.only(
                          bottom: 20, top: 30, right: 20),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      
                        SizedBox(
                          width: 5.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.top,
                              color: Color.fromRGBO(231, 76, 60, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.laptopCode,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Sistemas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.top,
                              color: Color.fromRGBO(211, 84, 0, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.cogs,
                                area: 'Electronica');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.cogs,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Electronica',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(52, 73, 94, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.industry,
                                area: 'Industrial');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.industry,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Industrial',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(108, 52, 131, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.folder, area: 'Gestión');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.folder,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Gestion Empresarial',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(39, 174, 96, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.leanpub, area: 'Otros');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.leanpub,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Lecturas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20.0,
                        ),
                        BounceInDown(
                            child: NeumorphicButton(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(30)),
                          style: NeumorphicStyle(
                              lightSource: LightSource.topRight,
                              color: Color.fromRGBO(36, 113, 163, 1),
                              depth: 8,
                              intensity: .8,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .5),
                          onClick: () {
                            final header = new Header(
                                icon: FontAwesomeIcons.squareRootAlt,
                                area: 'Ciencias Basicas');
                            Navigator.pushNamed(context, 'categorias',
                                arguments: header);
                          },
                          child: Row(
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.squareRootAlt,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Ciencias Basicas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Novelas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BounceInDown(
                        child: Neumorphic(
                            boxShape: NeumorphicBoxShape.roundRect(
                                borderRadius: BorderRadius.circular(5)),
                            style: NeumorphicStyle(
                                color: Color.fromRGBO(232, 236, 236, 1),
                                depth: 5,
                                intensity: 1,
                                shape: NeumorphicShape.concave,
                                surfaceIntensity: .1),
                            child: Text('Novelas! 2020',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Color(0xFF3E3E3E),
                                ))),
                      )
                    ])),
            Container(
              height: size.height*.25,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                    child: BooksTile(
                        page: 14,
                        titulo: 'reto',  
                        imagen: 'assets/reto.jpg',
                        categoria: 'Novelas',
                        descripcion:
                            'Julia está en la cúspide de su poder, pero la traición y la división familiar amenazan con echarlo todo a perder.'),
                  ),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 15,
                          titulo: 'A Corazon Abierto',
                          imagen: 'assets/acorazonabierto.jpg',
                          categoria: 'Novelas',
                          descripcion:
                              'Partiendo de un episodio ocurrido en Madrid en 1939, la narradora de esta historia cuenta la apasionada y tormentosa relación de sus padres, y cómo la personalidad desmedida de él')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'El Heredero',
                          imagen: 'assets/heredero.jpg',
                           categoria: 'Novelas',
                          descripcion:
                              'Un majestuoso landó avanza en dirección a la imponente finca de los Marqués. Con tan solo siete años, la pequeña Josefa entra a trabajar como sirvienta en la casa')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'HarryPotter',
                          imagen: 'assets/harry2.jpg',
                          categoria: 'Novelas',
                          descripcion:
                              'Tras derrotar una vez más a lord Voldemort, su siniestro enemigo en Harry Potter y la piedra filosofal')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          titulo: 'HarryPotter y El Legado Maldito',
                          imagen: 'assets/harry10.jpg',
                           categoria: 'Novelas',
                          descripcion:
                              'Mientras Harry se enfrenta con un pasado que se niega a permanecer donde pertenece')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          page: 16,
                          categoria: 'Novelas',
                          titulo: 'Maze Runner ',
                          imagen: 'assets/mazer.jpg',
                          descripcion:
                              'Al despertar dentro de un oscuro elevador en movimiento, lo único que Thomas logra recordar es su nombre. No sabe quién es. Tampoco hacia dónde va.')),
                ],
              ),
            ),
            //Comics
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Neumorphic(
                            boxShape: NeumorphicBoxShape.roundRect(
                                borderRadius: BorderRadius.circular(5)),
                            style: NeumorphicStyle(
                                color: Color.fromRGBO(232, 236, 236, 1),
                                depth: 5,
                                intensity: 1,
                                shape: NeumorphicShape.concave,
                                surfaceIntensity: .1),
                            child: Text('Comics! Mas leidos',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Color(0xFF3E3E3E),
                                ))),
                      )
                    ])),
            Container(
               height: size.height*.25,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 1,
                          titulo: 'Batman 2',
                          imagen: 'assets/batman2.jpg',
                          descripcion:
                              'El Joker ha sido asesinado. Su asesino es un misterio. Batman es el mejor detective del mundo. ')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 2,
                          titulo: 'Batman1',
                          imagen: 'assets/batman.jpg',
                          descripcion:
                              'El misterioso maestro criminal conocido solo como el Diseñador una vez reunió a los mayores criminales de Gotham City para planear el crimen perfecto.')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 3,
                          titulo: 'Spiderman',
                          imagen: 'assets/spiderman.jpg',
                          descripcion:
                              'Después de un encuentro devastador con el Gato Negro y sus poderes de mala suerte, el equipo de Spidey no tiene suerte y se atacan mutuamente.')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 4,
                          titulo: 'Capitan America!',
                          imagen: 'assets/cap.jpg',
                          descripcion:
                              'Steve Rogers está muerto! ¡Viva el Capitán América! Fue un héroe para millones, una inspiración para los servicios armados de Estados Unidos !')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 5,
                          titulo: 'Flash',
                          imagen: 'assets/flash.jpg',
                          descripcion:
                              'Aprenda cómo el científico policial Barry Allen, Flash de la década de 1960, se cruzó por primera vez con Jay Garrick, Flash de la década de 1940!')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Comics',
                          page: 6,
                          titulo: 'Avengers',
                          imagen: 'assets/aveng.jpg',
                          descripcion: 'Arreglar'))
                ],
              ),
            ),
            //Ciencias Basicas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Neumorphic(
                          boxShape: NeumorphicBoxShape.roundRect(
                              borderRadius: BorderRadius.circular(5)),
                          style: NeumorphicStyle(
                              color: Color.fromRGBO(232, 236, 236, 1),
                              depth: 5,
                              intensity: 1,
                              shape: NeumorphicShape.concave,
                              surfaceIntensity: .1),
                          child: Text('Ciencias Basicas!',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                                color: Color(0xFF3E3E3E),
                                //color: Colors.black
                              )),
                        ),
                      ),
                    ])),
            Container(
              height: size.height*.25,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 7,
                          titulo: 'Circuitos Electricos',
                          imagen: 'assets/circuitos.jpg',
                          descripcion:
                              'Esta obra es un libro de texto para los cursos de análisis de circuitos que se imparten en las carreras de ingeniería sistemas, ingeniería electrónica')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 8,
                          titulo: 'Fisica',
                          imagen: 'assets/fisica.jpg',
                          descripcion:
                              'Arreglar')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 9,
                          titulo: 'Calculo Diferencial!',
                          imagen: 'assets/cal-d.jpg',
                          descripcion:
                              'Arreglar')),
                    SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 10,
                          titulo: 'Calculo Integral',
                          imagen: 'assets/calc-i.jpg',
                          descripcion:
                              'Arreglar')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 11,
                          titulo: 'Quimica',
                          imagen: 'assets/quimica.jpg',
                          descripcion:
                              'Arreglar')),
                   SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 12,
                          titulo: 'Metodos Numericos',
                          imagen: 'assets/metodosn.jpg',
                          descripcion:
                             'Arreglar')),
                 SizedBox(width: size.width*.04,),
                  ElasticInUp(
                      delay: Duration(milliseconds: 500),
                      child: BooksTile(
                          categoria: 'Ciencias Basicas',
                          page: 13,
                          titulo: 'Algebra Lineal',
                          imagen: 'assets/algebral.jpg',
                          descripcion:
                              'Arreglar')),
                ],
              ),
            ),
           SizedBox(height: size.height*.05,),  
        ],
        ),
      );
   

  }

 
  
}
