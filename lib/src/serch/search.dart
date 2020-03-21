import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:tecmilibro/src/models/libro_model.dart';
import 'package:tecmilibro/src/providers/libro_providers.dart';



class DataSearch extends SearchDelegate {

  String seleccion = '';
  final libros = new LibrosProvider();


  @override
  List<Widget> buildActions(BuildContext context) {
    // Las acciones de nuestro AppBar
    return [
      IconButton(
        icon: Icon( Icons.clear ),
        color: Colors.black,
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close( context, null );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Center(
      child: Container(
        child: Text(seleccion),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Son las sugerencias que aparecen cuando la persona escribe
     if ( query.isEmpty ) {
      return Container(
                child: Center(
                    child: FlareActor("assets/search.flr",
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        animation: "idle")));
    } 

    return FutureBuilder(
      future: libros.buscarPelicula(query),
      builder: (BuildContext context, AsyncSnapshot<List<Libro>> snapshot) {
          if( snapshot.hasData ) {
            final libros = snapshot.data;
            return ListView(
              children: libros.map( (libro) {
                  return ListTile(
                    leading: FadeInImage(
                      image: NetworkImage( libro.getImg() ),
                      placeholder: AssetImage('assets/img/no-image.jpg'),
                      width: 50.0,
                      fit: BoxFit.contain,
                    ),
                    title: Text( libro.titulo ),
                    subtitle: Text( libro.clasificacion ),
                    onTap: (){
                      close( context, null);
                      libro.uniqueId = '${ libro.id}';
                      Navigator.pushNamed(context, 'detallea', arguments: libro);
                     // Navigator.pushNamed(context, 'detalle', arguments: libro);
                    },
                  );
              }).toList()
            );

          } else {
            return Container(
                child: Center(
                    child: FlareActor("assets/search.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: "fail")));
          }

      },
    );


  }

  

}
