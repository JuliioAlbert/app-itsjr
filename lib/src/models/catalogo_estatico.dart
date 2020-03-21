class Catalogo {
    String    uniqueId;
  
    int       page;
    String    img;
    String    sinopc;
    String    titulo;
    

    Catalogo({
        this.page,
        this.img,
        this.sinopc,
        this.titulo


    });

     Catalogo.fromJsonMap(Map<String, dynamic> json) {
        img                   = json['img'];
        sinopc                = json['sinopc'];
        page                  = json['page'];
        titulo                = json['titulo'];
    }

    


getImg(){
  if(img == null ){
    return 'http://denrakaev.com/wp-content/uploads/2015/03/no-image-800x511.png';
  }else{
  return img;
}
}

}

