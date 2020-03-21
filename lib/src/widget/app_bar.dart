import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tecmilibro/src/serch/search.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Spacer(),
          SizedBox(height: 100,),
          JelloIn(
            child: IconButton(icon: Icon(FontAwesomeIcons.search,color: Colors.white,), onPressed: () {
                showSearch(
                  context: context, 
                  delegate: DataSearch(),
                );
            }),
          ),
          SizedBox(width: 20.0)
        ],
      ),
    );
  }
}
