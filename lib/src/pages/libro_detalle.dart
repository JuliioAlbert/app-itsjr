import 'package:flutter/material.dart';
import 'package:tecmilibro/src/models/libro_model.dart';


class LibroDetalle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final Libro libro = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppbar( libro ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox( height: 10.0 ),
                _posterTitulo( context, libro ),
                _descripcion( libro ),
              ]
            ),
          )
        ],
      )
    );
  }


  Widget _crearAppbar( Libro libro ){

    return SliverAppBar(
      elevation: 2.0,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          libro.titulo,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          image: NetworkImage( libro.getBackgroundImg() ),
          placeholder: AssetImage('assets/libros.gif'),
          fadeInDuration: Duration(microseconds: 100),
          fit: BoxFit.cover,
        ),
      ),
    );

  }

  Widget _posterTitulo(BuildContext context, Libro libro ){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: libro.uniqueId,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: NetworkImage( libro.getImg() ),
                height: 150.0,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(libro.titulo, style: Theme.of(context).textTheme.title, overflow: TextOverflow.ellipsis ),
                Text(libro.area, style: Theme.of(context).textTheme.subhead, overflow: TextOverflow.ellipsis ),
                Row(
                  children: <Widget>[
                    Icon( Icons.location_on ),
                    Text( libro.clasificacion.toString(), style: Theme.of(context).textTheme.subhead )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }


  Widget _descripcion( Libro libro ) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        libro.descripcion,
        textAlign: TextAlign.justify,
      ),
    );

  }



}