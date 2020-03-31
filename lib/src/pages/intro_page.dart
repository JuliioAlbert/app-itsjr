import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nima/nima_actor.dart';
import 'package:tecmilibro/src/widget/fondo_circular.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width < 800) {
       return Scaffold(
        body: vertical(context),
      );
    } else {
      return Scaffold(
        body: horizontal(context),
      );
    }
  }

  vertical(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(232, 236, 236, 1),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          FondoCircular(),
          Positioned(
            left: 15,
            child: Container(
              width: size.width * 1,
              height: size.height * .55,
              child: NimaActor(
                "assets/New/Newton.nma",
                animation: "Idle",
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
              bottom: 54,
              left: -6,
              child: ElasticInRight(
                delay: Duration(seconds: 1),
                child: Container(
                    width: size.width * .7,
                    height: size.height * .6,
                    child: Image.asset(
                      'assets/Logo.png',
                    )),
              )),
          SizedBox(
            height: size.height * 0.030,
          ),
          Container(
            padding: EdgeInsets.only(top: size.height * 0.72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElasticInRight(
                    delay: Duration(milliseconds: 1200),
                    child: Text(
                      "Centro De Informacion!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontStyle: FontStyle.italic,
                      ),
                    )),
                ElasticInRight(
                  delay: Duration(milliseconds: 1500),
                  child: Spin(
                    delay: Duration(seconds: 2),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.book,
                        size: 40,
                        color: Color.fromRGBO(12, 45, 108, 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FadeInDown(
                      delay: Duration(milliseconds: 1800),
                      child: Swing(
                        delay: Duration(seconds: 2),
                        child: Container(
                          width: size.width * .20,
                          height: size.height * 0.10,
                          child: NeumorphicButton(
                            boxShape: NeumorphicBoxShape.circle(),
                            onClick: () {
                              Navigator.pushReplacementNamed(
                                  context, 'principal');
                            },
                            style: NeumorphicStyle(
                                intensity: 1.0,
                                depth: 20,
                                surfaceIntensity: 0,
                                shape: NeumorphicShape.concave,
                                color: Color.fromRGBO(12, 45, 108, 1.0)),
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.chevronCircleRight,
                                size: 40,
                                color: Color.fromRGBO(232, 236, 236, 1),
                              ),
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
    );
  }

  horizontal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(232, 236, 236, 1),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          FondoCircular(),
          Positioned(
            right: -30,
            bottom: 5,
            child: Container(
              width: size.width * .51,
              height: size.height *1.20,
              child: NimaActor(
                "assets/New/Newton.nma",
                animation: "Idle",
                alignment: Alignment.centerRight,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
             top: -18,
              left: -110,
              child: ElasticInRight(
                delay: Duration(seconds: 1),
                child: Container(
                    width: size.width * .7,
                    height: size.height * .6,
                    child: Image.asset(
                      'assets/Logo.png',
                    )),
              )),
          SizedBox(
            height: size.height * 0.030,
          ),
          Positioned(
            left: 60,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: size.height * 0.72),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElasticInRight(
                      delay: Duration(milliseconds: 1200),
                      child: Text(
                        "Centro De Informacion!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                  ElasticInRight(
                    delay: Duration(milliseconds: 1500),
                    child: Spin(
                      delay: Duration(seconds: 2),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.book,
                          size: 40,
                          color: Color.fromRGBO(12, 45, 108, 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FadeInDown(
                        delay: Duration(milliseconds: 1800),
                        child: Swing(
                          delay: Duration(seconds: 2),
                          child: Container(
                            width: size.width * .12,
                            height: size.height * 0.2,
                            child: NeumorphicButton(
                              boxShape: NeumorphicBoxShape.circle(),
                              onClick: () {
                               Navigator.pushReplacementNamed(
                                    context, 'principal'); 
                              },
                              style: NeumorphicStyle(
                                  intensity: 1.0,
                                  depth: 20,
                                  surfaceIntensity: 0,
                                  shape: NeumorphicShape.concave,
                                  color: Color.fromRGBO(12, 45, 108, 1.0)),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.chevronCircleRight,
                                  size: 40,
                                  color: Color.fromRGBO(232, 236, 236, 1),
                                ),
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
          ),
        ],
      ),
    );
  }
}
