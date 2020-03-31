
import 'package:flutter/material.dart';


class BooksTile extends StatelessWidget {
  int page;
  String imagen,titulo,descripcion, categoria;
  BooksTile({@required this.descripcion,
    @required this.titulo,@required this.categoria, @required this.imagen, @required this.page});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    if (size.width < 800) {
       return vertical(context);
    } else{
   
      return horizontal(context);
      
    }
}
  vertical(BuildContext context){
     final size = MediaQuery.of(context).size;
      return Container(
        height:size.height*.300,
        margin: EdgeInsets.only(right: 16),
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height*.24,
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height:  size.height*.2,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                     color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(5, 12),
                      blurRadius: 6.0,
                      spreadRadius: 3.0
                    ),
                    BoxShadow(
                     color: Color(0XFFEFF3F6),
                      offset: Offset(-5, 0),
                      blurRadius: 6.0,
                      spreadRadius: 0.0
                    )
                  ]
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: size.width*.328,

                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 260,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 8,),
                            Text(descripcion, style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),),
                            Spacer(),
                            Row(children: <Widget>[
                             
                               Text(categoria,style: TextStyle(
                                color: Color(0xff007084)
                            ),)
                            ],),
                           
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              height: size.height *.245,
              width: size.width*.3,
              margin: EdgeInsets.only(left: 15,
                top: 5,),
              child: Image.asset(imagen,
                fit: BoxFit.cover,),
            ),
           
          ],
        ),
      
    );
  }

  horizontal(BuildContext context){
     final size = MediaQuery.of(context).size;
      return Container(
        height:size.height*.6,
        margin: EdgeInsets.only(right: 16),
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height*.6,
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: MediaQuery.of(context).size.width - 460,
                  height:  size.height*.6,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                     color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(5, 12),
                      blurRadius: 6.0,
                      spreadRadius: 3.0
                    ),
                    BoxShadow(
                     color: Color(0XFFEFF3F6),
                      offset: Offset(-5, 0),
                      blurRadius: 6.0,
                      spreadRadius: 0.0
                    )
                  ]
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: size.width*.21,

                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 660,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 8,),
                            Text(descripcion, style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),),
                            Spacer(),
                            Row(children: <Widget>[
                             
                               Text(categoria,style: TextStyle(
                                color: Color(0xff007084)
                            ),)
                            ],),
                           
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              height: size.height *.8,
              width: size.width*.2,
              margin: EdgeInsets.only(left: 10,
                top: 5,),
              child: Image.asset(imagen,
                fit: BoxFit.contain,),
            ),
           
          ],
        ),
      
    );
  }
}
