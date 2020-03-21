import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox( height: 45.0 ),
          Text('CENTRO DE INFORMACION', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30.0 ,color: Colors.white)),
          Text('ITSJR', style: TextStyle( fontWeight: FontWeight.w100, fontSize: 18.0 )),
        ],
      ),
    );
  }
}