import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:tecmilibro/src/providers/libro_providers.dart';
import 'package:tecmilibro/src/widget/FadeAnimation.dart';
import 'package:tecmilibro/src/widget/card_swiper.dart';

class LecturasPage extends StatefulWidget {
  @override
  _LecturasPageState createState() => _LecturasPageState();
}

class _LecturasPageState extends State<LecturasPage> {

final librosProvider = new LibrosProvider();

  @override
  Widget build(BuildContext context) {
    String area="Otros";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeAnimation(
                1,
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                    color: Color.fromRGBO(12, 45, 108, 1.0),
                  ),
                  child: Container(
                      child: Center(
                          child: FlareActor("assets/reading.flr",
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              animation: "Swing"))),
                )),
                BounceInDown(
                  child: Container(
                     child: _swiperTarjetas(area),
                    ),
                ),
                SizedBox(height: 50,)

          ]
        )
      )
    );
  }

  _swiperTarjetas(String area) {
    return FutureBuilder (
      future:  librosProvider.getArea(area),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          final size = MediaQuery.of(context).size;
        if (snapshot.hasData) {
          return CardSwiper(
            libros: snapshot.data,
          );
        } else {
          return Container(
              height: size.height*.5,
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