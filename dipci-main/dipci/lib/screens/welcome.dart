import 'package:dipci/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../images/images.dart';

class WelcomePage extends StatelessWidget {
  final imagenes = Images();
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: PageView(
                    controller: _controller,
                    physics: BouncingScrollPhysics(),
                    children: [
                      WelcomePages(
                        color: Colors.white,
                        image: imagenes.pig,
                        text:
                            'Hola esto es una prueba, hola esto es una prueba',
                        textColor: Colors.black,
                        textSize: 20.0,
                      ),
                      WelcomePages(
                        color: Colors.white,
                        image: imagenes.bear,
                        text:
                            'Hola esto es una prueba 2, esto es una prueba 2 2 2',
                        textColor: Colors.black,
                        textSize: 20.0,
                      ),
                      WelcomePages(
                        color: Colors.white,
                        image: imagenes.creditTarget,
                        text: 'Bienvenido',
                        textColor: colorPrincipal,
                        textSize: 45.0,
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                            effect: WormEffect(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              color: colorPrincipal,
                              shape: StadiumBorder(),
                              child: Text(
                                'Siguiente',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              onPressed: () {
                                _controller.nextPage(
                                    duration: Duration(microseconds: 500),
                                    curve: Curves.bounceIn);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomePages extends StatelessWidget {
  final color;
  final image;
  final text;
  final textColor;
  final textSize;

  const WelcomePages(
      {this.color, this.image, this.text, this.textColor, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: this.color,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(50.0),
              height: 280,
              width: 280,
              child: SvgPicture.asset(image),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontSize: textSize), //TODO: CAMBIAR LA TIPOGRAFIA
              ),
            )
          ],
        ),
      ),
    );
  }
}
