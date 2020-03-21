import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:tecmilibro/src/models/libro_model.dart';

class LibrosProvider {
  
  String _url      = 'mi-libro-tec-itsjr.herokuapp.com';
  int _popularesPage = 0;
  bool _cargando     = false;

  List<Libro> _populares = new List();

  final _popularesStreamController = StreamController<List<Libro>>.broadcast();


  Function(List<Libro>) get popularesSink => _popularesStreamController.sink.add;

  Stream<List<Libro>> get popularesStream => _popularesStreamController.stream;


  void disposeStreams() {
    _popularesStreamController?.close();
  }
  Future<List<Libro>> _procesarRespuesta(Uri url) async { 
    final resp = await http.get( url );
    final decodedData = json.decode(resp.body);
    final libros = new Libros.fromJsonList(decodedData['libros']);
    return libros.items;
  }
   Future<List<Libro>> getTodos() async {
    final url = Uri.https(_url, '/libro');
    return await _procesarRespuesta(url);
  }
   Future<List<Libro>> getPopulares() async {
    if ( _cargando ) return [];
    _cargando = true;
    _popularesPage++;
    final url = Uri.https(_url, '/libro' ,{
       'page'     :  "4"
    } );
    final resp = await _procesarRespuesta(url);
    _populares.addAll(resp);
    popularesSink( _populares );
    _cargando = false;
    return resp;
  }
  Future<List<Libro>> getArea(String area)async {
    final url = Uri.https(_url, '/categorias/$area');
    return await _procesarRespuesta(url);

  }
  
  Future<List<Libro>> buscarPelicula( String query ) async {

    final url = Uri.https(_url, '/busqueda/todo/$query', );

    return await _procesarRespuesta(url);

  }

}