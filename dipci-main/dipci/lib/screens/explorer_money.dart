import 'package:dipci/colors/color.dart';
import 'package:dipci/images/images.dart';
import 'package:dipci/screens/home_page.dart';
import 'package:dipci/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorerMoney extends StatefulWidget {
  @override
  _ExplorerMoneyState createState() => _ExplorerMoneyState();
}

class _ExplorerMoneyState extends State<ExplorerMoney> {
  final _controller = PageController();

  final images = Images();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar2(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: PageView(
          controller: _controller,
          children: [

            pageStyle(
                img: images.twoThousand,
                text:
                    'Caracteristicas: El azul es el color predominante. Por un lado se ve la imagen de la artista Débora Arango junto con las hojas y el fruto del árbol lechoso y un pájaro cardenal. Por el otro lado se resalta Caño Cristales el “río de los cinco colores” y varias aves sobrevolando la copa de un árbol.',
                title: 'Billete de 2.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.fiveThousand,
                text:
                    'Caracteristicas: El café es el color predominante. Por un lado se aprecia la imagen del poeta José Asunción Silva junto con una planta de puya y  un abejorro. En el otro lado se ven los páramos colombianos, el oso de anteojos, el cóndor de Los Andes y el poema “Melancolía” de José Asunción Silva.',
                title: 'Billete de 5.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.tenThousand,
                text:
                    'Caracteristicas: El rojo es el color predominante. Por un lado se aprecia la imagen de la antropóloga Virginia Gutiérrez junto con la rana arborícola y la flor de la Victoria regia. Por el otro lado se ve el paisaje de la región amazónica en la que el río, que se acerca desde el horizonte, se convierte en serpiente y la representación de un pescador en una canoa y algunas especies animales.',
                title: 'Billete de 10.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
              img: images.twentyThousand,
                text:
                    'Caracteristicas: Este billete rinde homenaje al presidente de Colombia Alfonso López Michelsen y al sombrero vueltiao.',
                title: 'Billete de 20.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.fiftyThousand,
                text:
                    'Caracteristicas: Este billete rinde homenaje al nobel de literatura Gabriel García Márquez. Así mismo, exalta las terrazas de Ciudad Perdida y las imágenes de dos indígenas y unas viviendas indígenas de la cultura tayrona.',
                title: 'Billete de 50.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
               img: images.oneThousand,
                text:
                    'Caracteristicas: Por un lado se aprecia la imagen del presidente Carlos Lleras Restrepo,junto con el pájaro barranquero y la flor del sietecueros. Por otro lado se ve el Valle de Cocora en Quindío y la palma de cera, nuestro árbol nacional.',
                title: 'Billete de 100.000 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.fiftyCoin,
                text:
                    'Caracteristicas: Por un lado se encuentra el escudo de armas de Colombia rodeado por la leyenda “REPÚBLICA DE COLOMBIA” y el año de emisión al pie. Por el otro lado, la denominación “50” en números arábigos, debajo  la palabra “PESOS” y el conjunto rodeando de una corona de laurel abierta.',
                title: 'Moneda de 50 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.oneCoin,
                text:
                    'Caracteristicas: Por un lado se ve una imagen del frailejón y por el lado contrario la leyenda “REPÚBLICA DE COLOMBIA” y el año de emisión al pie',
                title: 'Moneda de 100 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.twoCoin,
                text:
                    'Caracteristicas: Por un lado se ve una imagen de la guacamaya bandera y por el lado contrario la leyenda “REPÚBLICA DE COLOMBIA” y el año de emisión al pie',
                title: 'Moneda de 200 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.fiveCoin,
                text:
                    'Caracteristicas: Por un lado se ve la imagen de la rana de cristal y por el lado contrario leyenda “REPÚBLICA DE COLOMBIA” y el año de emisión al pie',
                title: 'Moneda de 500 pesos',
                function: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                textButton: 'Siguiente'),

            pageStyle(
                img: images.onethousandCoin,
                text:
                    'Caracteristicas: Por un lado se ve la imagen de la tortuga caguama y por el lado contrario la leyenda “REPÚBLICA DE COLOMBIA” y el año de emisión al pie',
                title: 'Moneda de 1.000 pesos',
                function: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                textButton: 'Ir al menú'),
          ],
        ),
      ),
    );
  }

  Widget pageStyle(
      {String text,
      String title,
      Function function,
      String textButton,
      String img = 'assets/img/buy_five.png'}) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(img),
                )),
            Divider(
              thickness: 2,
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: colorPrincipal,
                                fontSize: 28,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 25),
                        Text(
                          text,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )),
            GestureDetector(
              child: Container(
                height: 60,
                color: colorPrincipal,
                child: Center(
                  child: Text(
                    textButton,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              onTap: function,
            ),
          ],
        ));
  }
}
