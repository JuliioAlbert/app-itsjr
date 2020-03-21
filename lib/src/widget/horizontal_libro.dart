import 'package:flutter/material.dart';
import 'package:tecmilibro/src/models/libro_model.dart';



class MovieHorizontal extends StatelessWidget {

  final List<Libro> libros;
  final Function siguientePagina;

  MovieHorizontal({ @required this.libros, @required this.siguientePagina });
  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    _pageController.addListener( () {
      if ( _pageController.position.pixels >= _pageController.position.maxScrollExtent - 200 ){
        siguientePagina();
      }
    });


    return Container(
      height: _screenSize.height * 0.2,
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        // children: _tarjetas(context),
        itemCount: libros.length,
        itemBuilder: ( context, i ) => _tarjeta(context, libros[i] ),
      ),
    );


  }

  Widget _tarjeta(BuildContext context, Libro libro) {
    libro.uniqueId = '${libro.id }-poster';
    final tarjeta = Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: libro.uniqueId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  image: NetworkImage( libro.getImg() ),
                  placeholder: AssetImage('assets/libros.gif'),
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              libro.titulo,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      );

    return GestureDetector(
      child: tarjeta,
      onTap: (){
        Navigator.pushNamed(context, 'detalle', arguments: libro);
      },
    );

  }


  List<Widget> _tarjetas(BuildContext context) {

    return libros.map( (libros) {

      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: NetworkImage( libros.getImg() ),
                placeholder: AssetImage('assets/libros.gif'),
                fit: BoxFit.cover,
                height: 160.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              libros.titulo,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      );


    }).toList();

  }

}