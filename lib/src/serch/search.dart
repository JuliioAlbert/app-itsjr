import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';
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
        icon: Icon(Icons.arrow_back),
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
        icon: AnimatedIcons.menu_close,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
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
    if (query.isEmpty) {
      //Spaceman_a-Untitled.flr
      return Container(
        color: Color.fromRGBO(28, 40, 51, 1),
        width: double.infinity,
        height: double.infinity,
        child: NimaActor(
          "assets/Robot/Robot.nma",
          animation: "Flight",
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      );
    }

    return FutureBuilder(
      future: libros.buscarPelicula(query),
      builder: (BuildContext context, AsyncSnapshot<List<Libro>> snapshot) {
        if (snapshot.hasData) {
          final libros = snapshot.data;
          return ListView(
              children: libros.map((libro) {
            return ListTile(
              leading: FadeInImage(
                image: NetworkImage(libro.getImg()),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                width: 50.0,
                fit: BoxFit.contain,
              ),

              title: Text(libro.titulo),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(libro.clasificacion),
                  Text(libro.autor)
                ],
              ),
              onTap: () {
                close(context, null);
                Navigator.pushNamed(context, 'detallea', arguments: libro);
                // Navigator.pushNamed(context, 'detalle', arguments: libro);
              },
            );
          }).toList());
        } else {
          //Spaceman_a-Untitled.flr
          return Container(
            color: Color.fromRGBO(28, 40, 51, 1),
            width: double.infinity,
            height: double.infinity,
            child: NimaActor(
              "assets/Robot/Robot.nma",
              animation: "Flight",
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          );
        }
      },
    );
  }
}
