import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tecmilibro/src/models/libro_model.dart';
import 'package:tecmilibro/src/widget/FadeAnimation.dart';

class LibroADetalle extends StatefulWidget {
  @override
  _LibroADetalleState createState() => _LibroADetalleState();
}

class _LibroADetalleState extends State<LibroADetalle>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController()..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Libro libro = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        makePage(
          page: libro.uniqueId,
          libro: libro,
          title: libro.titulo,
          description: libro.descripcion,
          clasificacion: libro.clasificacion,
          cantidad:libro.cantidad,
          context: context,
        ),
      ],
    )));
  }

  makePage({
    title,
    description,
    page,
    clasificacion,
    Libro libro,
    BuildContext context,
    cantidad
  }) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(libro.getImg()),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.9,
          1
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.5),
        ])),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height *.7,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50,
                            width: double.infinity,
                            child:
                                  BounceInDown(
                                    delay: Duration(seconds: 1),
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          height: 1.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                        BounceInDown(
                          delay: Duration(seconds: 2),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                              Text(
                                '4.0',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        BounceInDown(
                          delay: Duration(seconds: 3),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Text(
                                    'Ubicacion ',
                                    style: TextStyle(
                                        color: Colors.red,
                                        height: 1.9,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  clasificacion,
                                  style: TextStyle(
                                      color: Colors.red,
                                      height: 1.9,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                          SizedBox(height: 15,),
                          BounceInDown(
                          delay: Duration(seconds: 3),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: FaIcon(FontAwesomeIcons.archive,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Text(
                                    'Disponibles',
                                    style: TextStyle(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '$cantidad',
                                  style: TextStyle(
                                      color: Colors.white,
                                      height: 2,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        Container(

                          width: double.infinity,
                          child: BounceInDown(
                            delay: Duration(seconds: 4),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                description,
                                style: TextStyle(
                                    color: Colors.white,
                                    height: 1.9,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ]),
                ])),
      ),
    );
  }
}
