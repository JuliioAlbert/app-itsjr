import 'package:flutter/material.dart';


class FondoCircular extends StatelessWidget {
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
  vertical(BuildContext context){
   final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          right: -(size.width) * 0.2,
          top: -(size.width) * .25,
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
  horizontal(BuildContext context){
   final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          right: -220,
          bottom: -60,
          child: Container(
            width: size.height * 1.56,
            height: size.height * 1.4,
            decoration: BoxDecoration(
                color: Color.fromRGBO(12, 45, 108, 1.0),
                borderRadius: BorderRadius.circular(4000.0)),
          ),
        )
      ],
    );
  }


}
