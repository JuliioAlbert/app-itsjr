class Libros {
  List<Libro> items = new List();
  Libros();
  Libros.fromJsonList( List<dynamic> jsonList  ) {
    if ( jsonList == null ) return;
    for ( var item in jsonList  ) {
      final libro = new Libro.fromJsonMap(item);
      items.add( libro );
    }
  }
}

class Libro {
    String    uniqueId;
  
    
    int       numeroadquisicion;
    String    titulo;
    String    autor;
    String    clasificacion;
    String    editorial;
    int       ejemplar;
    int       volumen;
    String       tomo;
    String    biblioteca;
    String    material;
    String    coleccion;
    int       numficha;
    String    img;
    String    descripcion;
    String    area;
    int       cantidad;

    Libro({
        
        this.numeroadquisicion,
        this.titulo,
        this.autor,
        this.clasificacion,
        this.editorial,
        this.ejemplar,
        this.volumen,
        this.tomo,
        this.biblioteca,
        this.material,
        this.coleccion,
        this.numficha,
        this.img,
        this.descripcion,
        this.area,
        this.cantidad
    });

     Libro.fromJsonMap(Map<String, dynamic> json) {
        
        numeroadquisicion     = json['numeroadquisicion'];
        titulo                = json['titulo'];
        autor                 = json['autor'];
        clasificacion         = json['clasificacion'];
        editorial             = json['editorial'];
        ejemplar              = json['ejemplar'];
        volumen               = json['volumen'];
        tomo                  = json['tomo'];
        biblioteca            = json['biblioteca'];
        material              = json['material'];
        coleccion             = json['coleccion'];
        numficha              = json['numficha'];
        img                   = json['img'];
        descripcion           = json['descripcion'];
        area                  = json['area'];
        cantidad              = json['cantidad'];
    }

    


getImg(){
  if(img == null ){
    return 'http://denrakaev.com/wp-content/uploads/2015/03/no-image-800x511.png';
  }else{
  return img;
}
}
getBackgroundImg(){
  if(img == null ){
    return 'http://denrakaev.com/wp-content/uploads/2015/03/no-image-800x511.png';
  }else{
  return img;
}
}
}

