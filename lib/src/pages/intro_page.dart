import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tecmilibro/src/widget/FadeAnimation.dart';
import 'package:tecmilibro/src/widget/fondo_circular.dart';
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(),
            FondoCircular(),
            BounceInDown(
              child: Container(
                  height: size.height * 0.600,
                  width: double.infinity,
                  child: Center(
                      child: FlareActor("assets/welcome.flr",
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          animation: "animation"))),
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            Container(
              padding: EdgeInsets.only(top: size.height * 0.550),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FadeAnimation(
                      3.2,
                      Text(
                        "Bienvenido!",
                        style: TextStyle(color: Colors.black, fontSize: 60),
                      )),
                  ElasticInRight(
                    delay: Duration(seconds: 3),
                    child: Center(
                      child: ZoomOut(
                        from: 80,
                        child: FaIcon(
                          FontAwesomeIcons.book,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  FadeAnimation(
                      3.2,
                      Text(
                        "Centro de Informacion \n ITSJR!",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            height: 1.2,
                            fontSize: 25),
                      )),
                  SizedBox(
                    height: size.height * 0.060,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInDown(
                        delay: Duration(seconds: 3),
                        child: Swing(
                          delay: Duration(seconds: 4),
                          child: Container(
                            width: size.width * .20,
                            height: size.height * 0.10,
                            child: FloatingActionButton(
                              onPressed: () {
                               
                                  Navigator.pushReplacementNamed(
                                      context, 'principal');
                              
                              },
                              backgroundColor: Color.fromRGBO(12, 45, 108, 1.0),
                              child: FaIcon(
                                FontAwesomeIcons.chevronCircleRight,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .03,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

