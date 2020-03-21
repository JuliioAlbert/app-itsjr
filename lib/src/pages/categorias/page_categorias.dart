import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'package:tecmilibro/src/models/header.dart';
//HTTP
import 'package:tecmilibro/src/providers/libro_providers.dart';

import 'package:tecmilibro/src/widget/card_swiper.dart';

import 'package:tecmilibro/src/widget/headers.dart';

class CategoriasPage extends StatelessWidget {
  final librosProvider = new LibrosProvider();

  Widget build(BuildContext context) {
    final Header area = ModalRoute.of(context).settings.arguments;
    String titulo = area.area;
    final size = MediaQuery.of(context).size;
    librosProvider.getArea(area.area);
    return Scaffold(
      
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          BounceInDown(
            child: IconHeader(
                icon: area.icon,
                titulo: titulo,
                color1: Color.fromRGBO(12, 45, 108, 1.0),
                color2: Color.fromRGBO(12, 45, 108, 1.0)),
          ),
          SizedBox(
            height: 30,
          ),
          ElasticIn(
            delay: Duration(milliseconds: 1000),
            child: Container(
              child: _swiperTarjetas(titulo),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ])));
  }

  _swiperTarjetas(String area) {
    return FutureBuilder(
      future: librosProvider.getArea(area),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        final size = MediaQuery.of(context).size;
        if (snapshot.hasData) {
          return CardSwiper(
            libros: snapshot.data,
          );
        } else {
          return Container(
              height: size.height * .5,
              width: double.infinity,
              child: Center(
                  child: FlareActor("assets/NoNetwork.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: "no_netwrok")));
        }
      },
    );
  }
}
