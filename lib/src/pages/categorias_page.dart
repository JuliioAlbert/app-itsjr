import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tecmilibro/src/models/catalogo_estatico.dart';
import 'package:tecmilibro/src/models/header.dart';


import 'package:tecmilibro/src/widget/FadeAnimation.dart';


class Categorias extends StatefulWidget {
  Categorias({Key key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            FadeAnimation(
                1,
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                    color: Color.fromRGBO(12, 45, 108, 1.0),
                  ),
                  child: Container(
                      child: Center(
                          child: FlareActor("assets/reading.flr",
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              animation: "Swing"))),
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                    1.2,
                    Text('Categorias Centro de Informacion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.only(bottom: 20, left: 20),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                         FadeAnimation(
                            1.2,
                            FlatButton(
                              
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () =>Navigator.pushNamed(context, 'home'),
                              color: Color.fromRGBO(53, 232, 189, 1),
                              child: Row(
                                children: <Widget>[
                                  FaIcon(FontAwesomeIcons.laptopCode, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text('Sistemas',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        FadeAnimation(
                            1.2,
                            FlatButton(
                              
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            
                              onPressed: () {
                                 final header= new Header(
                                    icon: FontAwesomeIcons.folder,
                                    area: 'Electronica'
                                );
                                Navigator.pushNamed(context, 'categorias', arguments: header);
                              },
                              color: Color.fromRGBO(96, 36, 10, 1),
                              child: Row(
                                children: <Widget>[
                                   FaIcon(FontAwesomeIcons.cogs, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text('Electronica',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        FadeAnimation(
                            1.3,
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                          
                              onPressed: () {
                                 final header= new Header(
                                    icon: FontAwesomeIcons.folder,
                                    area: 'industrial'
                                );
                                Navigator.pushNamed(context, 'categorias', arguments: header);
                              },
                              color: Color.fromRGBO(73, 234, 125, 1),
                              child:Row(
                                children: <Widget>[
                                FaIcon(FontAwesomeIcons.industry, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text('Industrial',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        FadeAnimation(
                            1.3,
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                         
                              onPressed:(){
                                final header= new Header(
                                    icon: FontAwesomeIcons.folder,
                                    area: 'Gestión'
                                );
                                Navigator.pushNamed(context, 'categorias', arguments: header);
                              },
                              color: Color.fromRGBO(73, 234, 234, 1),
                              child:Row(
                                children: <Widget>[
                                  Icon(Icons.folder, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text('Gestion Empresarial',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        FadeAnimation(
                            1.3,
                            FlatButton(
                              
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                           
                              onPressed: () {
                                final header= new Header(
                                    icon: FontAwesomeIcons.leanpub,
                                    area: 'Otros'
                                );
                                Navigator.pushNamed(context, 'categorias', arguments: header);
                              },
                              color: Color.fromRGBO(251, 121, 155, 1),
                              child: Row(
                                children: <Widget>[
                                FaIcon(FontAwesomeIcons.leanpub, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text('Lecturas',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        FadeAnimation(
                            1.3,
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                           
                              onPressed: () {
                                 final header= new Header(
                                    icon: FontAwesomeIcons.squareRootAlt,
                                    area: 'Ciencias Basicas'
                                );
                                Navigator.pushNamed(context, 'categorias', arguments: header);
                              },
                              color: Color.fromRGBO(169, 48, 214, 1),
                              child: Row(
                                children: <Widget>[
                                  FaIcon(FontAwesomeIcons.squareRootAlt, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text('Ciencias Basicas',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Novelas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Text('Novelas! 2020',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                      ),
                    ])),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                
                      ElasticInUp(
                        delay: Duration(milliseconds: 500),
                        child: makeCard(
                            page:14,
                            titulo: 'reto',
                            context: context,
                            startColor: Color.fromRGBO(251, 121, 155, 1),
                            endColor: Color.fromRGBO(251, 53, 105, 1),
                            image: 'assets/reto.jpg',
                            sinopc:
                                'Mantenerse en lo alto es mucho más difícil que llegar. Julia está en la cúspide de su poder, pero la traición y la división familiar amenazan con echarlo todo a perder. Para colmo de males, el médico Galeno diagnostica que la emperatriz padece lo que él, en griego, llama karkinos, y que los romanos, en latín, denominan cáncer. El enfrentamiento brutal entre sus dos hijos aboca la dinastía de Julia al colapso. En medio del dolor físico y moral que padece la augusta, cualquiera se hubiera rendido. Se acumulan tantos desastres que Julia siente que es como si luchara contra los dioses de Roma. Pero, en medio del caos, una historia de amor más fuerte que la muerte, una pasión capaz de superar pruebas imposibles emerge al rescate de Julia. Nada está perdido. La partida por el control del imperio continúa.'),
                      ),
                              
                ElasticInUp(
                   delay: Duration(milliseconds: 500),
                        child: 
                      makeCard(
                        page:15,
                         titulo: 'A Corazon Abierto',
                          context: context,
                          startColor: Color.fromRGBO(251, 121, 155, 1),
                          endColor: Color.fromRGBO(251, 53, 105, 1),
                          image: 'assets/acorazonabierto.jpg',
                          sinopc:
                              'Partiendo de un episodio ocurrido en Madrid en 1939, la narradora de esta historia cuenta la apasionada y tormentosa relación de sus padres, y cómo la personalidad desmedida de él y el corazón débil de ella marcaron el pulso de la vida de toda la familia.')),
                 ElasticInUp(
                    delay: Duration(milliseconds: 500),
                        child: 
                      makeCard(
                        page:16,
                         titulo: 'El Heredero',
                          context: context,
                          startColor: Color.fromRGBO(251, 121, 155, 1),
                          endColor: Color.fromRGBO(251, 53, 105, 1),
                          image: 'assets/heredero.jpg',
                          sinopc:
                              'Un majestuoso landó avanza en dirección a la imponente finca de los Marqués. Con tan solo siete años, la pequeña Josefa entra a trabajar como sirvienta en la casa, incapaz de imaginar cómo su presencia cambiará para siempre la historia de dos poderosas familias. ')
                              
                              
                              ),
                  ElasticInUp(
                     delay: Duration(milliseconds: 500),
                        child: 
                      makeCard(
                        page:16,
                         titulo: 'HarryPotter',
                          context: context,
                          startColor: Color.fromRGBO(251, 121, 155, 1),
                          endColor: Color.fromRGBO(251, 53, 105, 1),
                          image: 'assets/harry2.jpg',
                          sinopc:'Tras derrotar una vez más a lord Voldemort, su siniestro enemigo en Harry Potter y la piedra filosofal, Harry espera impaciente en casa de sus insoportables tíos el inicio del segundo curso del Colegio Hogwarts de Magia y Hechicería. Sin embargo, la espera dura poco, pues un elfo aparece en su habitación y le advierte que una amenaza mortal se cierne sobre la escuela'
                      )
                              
                              ),
                              
                         ElasticInUp(
                            delay: Duration(milliseconds: 500),
                        child: 
                          makeCard(
                            page:16,
                            titulo: 'HarryPotter y El Legado Maldito',
                              context: context,
                              startColor: Color.fromRGBO(251, 121, 155, 1),
                              endColor: Color.fromRGBO(251, 53, 105, 1),
                              image: 'assets/harry10.jpg',
                              sinopc:'Mientras Harry se enfrenta con un pasado que se niega a permanecer donde pertenece, su hijo menor Albus debe luchar con el peso de una herencia familiar que nunca quiso. Como el pasado y el presente se fusionan ominosamente, padre e hijo descubren una verdad incómoda: a veces, la oscuridad viene de lugares inesperados.'
                          )
                                  
                                  ),
                       ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child: 
                          makeCard(
                            page:16,
                            titulo: 'Maze Runner ',
                              context: context,
                              startColor: Color.fromRGBO(251, 121, 155, 1),
                              endColor: Color.fromRGBO(251, 53, 105, 1),
                              image: 'assets/mazer.jpg',
                              sinopc:'Al despertar dentro de un oscuro elevador en movimiento, lo único que Thomas logra recordar es su nombre. No sabe quién es. Tampoco hacia dónde va. Pero no está solo: cuando la caja llega a su destino, las puertas se abren y se ve rodeado por un grupo de jóvenes. bienvenido al área, novicio. El área. Un espacio abierto cercado por muros gigantescos. Al igual que Thomas, ninguno de ellos sabe cómo ha llegado allí. Ni por qué. De lo que están seguros es de que cada mañana las puertas de piedra del laberinto que los rodea se abren y por la noche, se cierran. Y que cada treinta días alguien nuevo es entregado por el elevador.'
                          )
                                  
                                  ),

                        
                ],
              ),
            ),
            //Comics
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Text('Comics! Mas leidos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                      ),
                    ])),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:1,
                           titulo: 'Batman 2',
                          context: context,
                          startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/batman2.jpg',
                          sinopc:
                              'El Joker ha sido asesinado. Su asesino es un misterio. Batman es el mejor detective del mundo. Pero, ¿qué sucede cuando la persona que busca es el hombre que lo mira en el espejo? Sin ningún recuerdo de los eventos de la noche anterior, Batman necesitará ayuda. Entonces, ¿quién mejor para aclararlo que John Constantine? El problema con eso es que a John le encanta un buen misterio, le encanta jugar con las cabezas de las personas aún más. Entonces, con la "ayuda" de John, la pareja profundizará en el sórdido vientre de Gotham mientras corren hacia la verdad alucinante de quién asesinó al Joker.')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:2,
                         titulo: 'Batman1',
                          context: context,
                           startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/batman.jpg',
                          sinopc:
                              'El misterioso maestro criminal conocido solo como el Diseñador una vez reunió a los mayores criminales de Gotham City para planear el crimen perfecto, y ahora su plan se ha desatado sobre la ciudad con todas sus fuerzas. Batman hará todo lo posible para descubrir el gran diseño, pero Catwoman es la que tiene el mayor secreto. Si Batman gana contra el Diseñador, perderá todo.')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:3,
                           titulo: 'Spiderman',
                          context: context,
                           startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/spiderman.jpg',
                          sinopc:
                              'Después de un encuentro devastador con el Gato Negro y sus poderes de mala suerte, el equipo de Spidey no tiene suerte y se atacan mutuamente. ¿Peter, Miles y Gwen aprenderán a superar su mala suerte y trabajar juntos de nuevo, o es este el final de la línea para el maravilloso trío araña?')),
                  ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:4,
                         titulo: 'Capitan America!',
                          context: context,
                           startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/cap.jpg',
                          sinopc:
                              'Steve Rogers está muerto! ¡Viva el Capitán América! Fue un héroe para millones, una inspiración para los servicios armados de Estados Unidos y el representante de los ideales más grandes de su nación. Vivió para su país, y ahora, ha dado su última medida final para la nación que amaba, derribado a sangre fría. Después de su muerte, el viejo socio de Cap, el Halcón, hace de la venganza su primer negocio. Sharon Carter se encuentra fuera de control, una cautiva de los secuaces del Cráneo Rojo. ¡Y Bucky Barnes, también conocido como el Soldado de Invierno, debe reconciliar su sórdido pasado con el llamado a convertirse en el nuevo Capitán América!')),
                  ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:5,
                         titulo: 'Flash',
                          context: context,
                           startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/flash.jpg',
                          sinopc:
                              'Aprenda cómo el científico policial Barry Allen, Flash de la década de 1960, se cruzó por primera vez con Jay Garrick, Flash de la década de 1940, en esta edición que recopila The Flash # 123, # 129, # 137, # 151, # 170 y # 173. ¡Estas son las historias que establecieron por primera vez el concepto de ciencia ficción de universos paralelos en DC Comics, ya que el Hombre más Vivo aprendió a usar su súper velocidad para viajar a través de las dimensiones a la Tierra-2!')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:6,
                         titulo: 'Avengers',
                          context: context,
                           startColor: Color.fromRGBO(57, 62, 62, 1),
                          endColor: Color.fromRGBO(21, 24, 24, 1),
                          image: 'assets/aveng.jpg',
                          sinopc: ''))
                ],
              ),
            ),
            //Ciencias Basicas
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        Text('Ciencias Basicas!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                      ),
                    ])),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:7,
                           titulo: 'Circuitos Electricos',
                          context: context,
                          startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/circuitos.jpg',
                          sinopc:
                    'Esta obra es un libro de texto para los cursos de análisis de circuitos que se imparten en las carreras de ingeniería mecánica, computación, ingeniería eléctrica-electrónica y telecomunicaciones. En esta nueva edición el enfoque central de la exposición es el concepto de que los circuitos eléctricos forman parte de la estructura básica de la tecnología moderna. Características de la obra: flexibilidad en la organización de los cursos a impartir proporciona los elementos necesarios para solucionar problemas específicos en la industria apéndice de pspice apéndice de matlab apéndice de fórmulas matemáticas apéndice de códigos de color de resistencias estándar.')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:8,
                           titulo: 'Fisica',
                          context: context,
                          startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/fisica.jpg',
                          sinopc:
                              'El misterioso maestro criminal conocido solo como el Diseñador una vez reunió a los mayores criminales de Gotham City para planear el crimen perfecto, y ahora su plan se ha desatado sobre la ciudad con todas sus fuerzas. Batman hará todo lo posible para descubrir el gran diseño, pero Catwoman es la que tiene el mayor secreto. Si Batman gana contra el Diseñador, perderá todo.')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:9,
                         titulo: 'Calculo Diferencial!',
                          context: context,
                           startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/cal-d.jpg',
                          sinopc:
                              'Después de un encuentro devastador con el Gato Negro y sus poderes de mala suerte, el equipo de Spidey no tiene suerte y se atacan mutuamente. ¿Peter, Miles y Gwen aprenderán a superar su mala suerte y trabajar juntos de nuevo, o es este el final de la línea para el maravilloso trío araña?')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                        page:10,
                         titulo: 'Calculo Integral',
                          context: context,
                           startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/calc-i.jpg',
                          sinopc:
                              'Steve Rogers está muerto! ¡Viva el Capitán América! Fue un héroe para millones, una inspiración para los servicios armados de Estados Unidos y el representante de los ideales más grandes de su nación. Vivió para su país, y ahora, ha dado su última medida final para la nación que amaba, derribado a sangre fría. Después de su muerte, el viejo socio de Cap, el Halcón, hace de la venganza su primer negocio. Sharon Carter se encuentra fuera de control, una cautiva de los secuaces del Cráneo Rojo. ¡Y Bucky Barnes, también conocido como el Soldado de Invierno, debe reconciliar su sórdido pasado con el llamado a convertirse en el nuevo Capitán América!')),
                 ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:11,
                           titulo: 'Quimica',
                          context: context,
                           startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/quimica.jpg',
                          sinopc:
                              ' Recoge Infinity Gauntlet (1991) # 1-6. ¡El Titán Loco Thanos ha tomado el control de Infinity Gauntlet y con él un poder casi omnipotente! ¿Quién puede detener a este nuevo señor mortal? ¡Todos los héroes principales de Marvel protagonizan esta épica de proporciones cósmicas!')),
                ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:12,
                           titulo: 'Metodos Numericos',
                          context: context,
                           startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/metodosn.jpg',
                          sinopc:
                              ' Recoge Infinity Gauntlet (1991) # 1-6. ¡El Titán Loco Thanos ha tomado el control de Infinity Gauntlet y con él un poder casi omnipotente! ¿Quién puede detener a este nuevo señor mortal? ¡Todos los héroes principales de Marvel protagonizan esta épica de proporciones cósmicas!')),
               ElasticInUp(
                          delay: Duration(milliseconds: 500),
                        child:
                      makeCard(
                          page:13,
                           titulo: 'Algebra Lineal',
                          context: context,
                           startColor: Color.fromRGBO(109, 70, 19, 1),
                          endColor: Color.fromRGBO(173, 108, 26, 1),
                          image: 'assets/algebral.jpg',
                          sinopc:
                              ' Recoge Infinity Gauntlet (1991) # 1-6. ¡El Titán Loco Thanos ha tomado el control de Infinity Gauntlet y con él un poder casi omnipotente! ¿Quién puede detener a este nuevo señor mortal? ¡Todos los héroes principales de Marvel protagonizan esta épica de proporciones cósmicas!')),
                
                ],
              ),
            ),
//
          ],
        ),
      ),
    );
  }

  Widget makeCard({context, startColor, endColor, image, sinopc,page, titulo}) {
    return GestureDetector(
      onTap: () {
        final r = Catalogo(
            img:image,
            sinopc:sinopc,
            page:page,
            titulo: titulo
        );
      Navigator.pushNamed(context, 'catalogo-detalle', arguments: r);
      },
      child: AspectRatio(
        aspectRatio: 5 / 6,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [startColor, endColor],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 1,
                    offset: Offset(10, 10))
              ]),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Image.asset(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
