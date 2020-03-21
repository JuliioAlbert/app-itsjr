import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FondoCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
       
        Positioned(
          right: -(size.width) * 0.1,
          top: -(size.width) * .6,
          child: Container(
            width: size.height * .7,
            height: size.height * 0.7,
            decoration: BoxDecoration(
                color: Color.fromRGBO(12, 45, 108, 1.0),
                borderRadius: BorderRadius.circular(4000.0)),
          ),
        )
      ],
    );
  }


}
