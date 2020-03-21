
import 'package:flutter/material.dart';
import 'package:tecmilibro/src/models/catalogo_estatico.dart';
import 'package:tecmilibro/src/widget/FadeAnimation.dart';

class CatalogoDetalle extends StatefulWidget {
  @override
  _CatalogoDetalleState createState() => _CatalogoDetalleState();
}

class _CatalogoDetalleState extends State<CatalogoDetalle> with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 4;

  void _onScroll() {
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  } 

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Catalogo catalogo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: catalogo.page,
            image: catalogo.img,
            description: catalogo.sinopc,
            title: catalogo.titulo
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return 
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.8, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1,
                      Text(title, style: TextStyle(color: Colors.white, fontSize: 50, height: 1.2, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(1.5, Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(Icons.star, color: Colors.grey, size: 15,),
                        ),
                        Text('4.0', style: TextStyle(color: Colors.white70),),
                      
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(2, Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(description, style: TextStyle(color: Colors.white, height: 1.9, fontSize: 15, fontWeight: FontWeight.w500),),
                    )),
                    SizedBox(height: 20,),
                   
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}