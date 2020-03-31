import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tecmilibro/src/models/libro_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Libro> libros;

  CardSwiper({@required this.libros});
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    if(_screenSize.width < 800 ){
      print("Vertical");
       print(_screenSize.width);
       return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.8,
          itemHeight: _screenSize.height * 0.6,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'detallea',
                      arguments: libros[index]),
                  child: FadeInImage(
                    image: NetworkImage(libros[index].getImg()),
                    placeholder: AssetImage('assets/libros.gif'),
                    fit: BoxFit.cover,
                  ),
                ));
          },
          itemCount: libros.length),
    );
    }
    else{
      print("Horizontal");
      return Container(
      padding: EdgeInsets.only(top: 15.0, left: 0,bottom: 20, right: 150),
      child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.25,
          itemHeight: _screenSize.height * .7,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'detallea',
                      arguments: libros[index]),
                  child: FadeInImage(
                    image: NetworkImage(libros[index].getImg()),
                    placeholder: AssetImage('assets/libros.gif'),
                    fit: BoxFit.cover,
                  ),
                ));
          },
          itemCount: libros.length),
    );

    }
   
  }
}
