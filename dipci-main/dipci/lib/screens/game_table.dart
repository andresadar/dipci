import 'package:dipci/images/images.dart';
import 'package:dipci/models/games.dart';
import 'package:dipci/screens/home_page.dart';
import 'package:dipci/util/util.dart';
import 'package:flutter/material.dart';

class GameTable extends StatelessWidget {

  final images = Images();
  final _controller = PageController();

  Future <bool> _willPopCallback() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
      appBar: appBar2(context),
       body: PageView(
         physics: NeverScrollableScrollPhysics() ,
         controller: _controller,
         children: [
           Game (image: images.opOne , text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$15.000', 
            answer2: '\$20.000', 
            answer3: '\$30.000',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

           Game (image: images.opTwo, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$80.000', 
            answer2: '\$60.000', 
            answer3: '\$50.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },
            textButton: 'Siguiente',
            ),

            Game (image: images.opThree, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$3.500', 
            answer2: '\$1.500', 
            answer3: '\$2.500',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.opFour, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$1.200', 
            answer2: '\$1.700', 
            answer3: '\$2.800',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.opFive, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$750', 
            answer2: '\$800', 
            answer3: '\$550',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.opSix, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$33.000', 
            answer2: '\$43.000', 
            answer3: '\$13.000',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.opSeven, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$70.000', 
            answer2: '\$90.000', 
            answer3: '\$50.000',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

               Game (image: images.opEight, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$120.000', 
            answer2: '\$240.000', 
            answer3: '\$140.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

               Game (image: images.opNine, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$800', 
            answer2: '\$650', 
            answer3: '\$950',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

               Game (image: images.opTen, text: 'Según la imagen anterior: ¿ Cuánto dinero tengo?',
            answer1: '\$100.000', 
            answer2: '\$90.000', 
            answer3: '\$40.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyEleven, text: 'Si el valor de las manzanas son \$2.000 y pago con el billete que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$3.000', 
            answer2: '\$4.000', 
            answer3: '\$1.000',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyTwelve, text: 'Si el valor del televisor es \$870.000 y pago con los billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$50.000', 
            answer2: '\$30.000', 
            answer3: '\$70.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyThirteen, text: 'Si el valor de la camiseta es \$16.500 y pago con el billete que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$5.800', 
            answer2: '\$4.000', 
            answer3: '\$3.500',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            
            Game (image: images.buyFourteen, text: 'Si el valor de las frutas es \$2.800 y pago con los  billetes y monedas que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$1.200', 
            answer2: '\$2.000', 
            answer3: '\$900',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyFifteen, text: 'Si el valor de los tacones es \$62.000 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$6.000', 
            answer2: '\$3.000', 
            answer3: '\$8.000',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            
            Game (image: images.buySixteen, text: 'Si el valor de la camara fotografica es \$125.000 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$55.000', 
            answer2: '\$25.000', 
            answer3: '\$12.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buySeventeen, text: 'Si el valor de las frutas es \$6.200 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$9.000', 
            answer2: '\$3.200', 
            answer3: '\$8.000',
            answerCorrect: 2,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            
            Game (image: images.buyEighteen, text: 'Si el valor de las frutas es \$1.100 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$300', 
            answer2: '\$100', 
            answer3: '\$400',
            answerCorrect: 3,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyNineteen, text: 'Si el valor de los tenis es \$65.000 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$35.000', 
            answer2: '\$45.000', 
            answer3: '\$15.000',
            answerCorrect: 1,

            function: (){
              Navigator.pop(context);
              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            },

            textButton: 'Siguiente',
            ),

            Game (image: images.buyTwenty , text: 'Si el valor de los tenis es \$173.600 y pago con los  billetes que hay en la imagen, ¿Cuánto es el dinero que me deben devolver?',
            answer1: '\$7.900', 
            answer2: '\$2.400', 
            answer3: '\$6.400',
            answerCorrect: 3,

            function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },

            textButton: 'Ir al menu',
            )
         ],
       ),
      ),
    );
  }
}