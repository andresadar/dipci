import 'package:dipci/colors/color.dart';
import 'package:dipci/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../images/images.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final imagenes = Images();

  final _controller = PageController();

  bool buttonChange = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: PageView(
          controller: _controller,
          physics: BouncingScrollPhysics(),
          children: [
            WelcomePages(
              color: Colors.white,
              image: imagenes.pig,
              text: 'Hola esto es una prueba, hola esto es una prueba',
              textColor: Colors.black,
              textSize: 20.0,
              controller: _controller,
              function: () {
                _controller.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.decelerate);
              },
            ),
            WelcomePages(
              color: Colors.white,
              image: imagenes.bear,
              text: 'Hola esto es una prueba 2, esto es una prueba 2 2 2',
              textColor: Colors.black,
              textSize: 20.0,
              controller: _controller,
              function: () {
                _controller.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.decelerate);
              },
            ),
            WelcomePages(
              color: Colors.white,
              image: imagenes.creditTarget,
              text: 'Bienvenido',
              textColor: colorPrincipal,
              textSize: 45.0,
              controller: _controller,
              function: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false);
              },
              textButton: '¡Comenzar!',
            )
          ],
        ),
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
  final controller;
  final function;
  final textButton;

  const WelcomePages({
    this.color,
    this.image,
    this.text,
    this.textColor,
    this.textSize,
    this.controller,
    this.function,
    this.textButton = 'Siguiente',
  });

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
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(50.0),
                height: 280,
                width: 280,
                child: SvgPicture.asset(image),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  this.text,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize), //TODO: CAMBIAR LA TIPOGRAFIA
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: this.color,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
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
                            this.textButton,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          onPressed: this.function,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
