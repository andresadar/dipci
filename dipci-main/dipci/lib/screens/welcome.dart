import 'package:flutter/material.dart';
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
                  flex: 3,
                  child: PageView(
                    controller: _controller,
                    physics: BouncingScrollPhysics(),
                    children: [
                      WelcomePages(Colors.red, _controller),
                      WelcomePages(Colors.blue, _controller),
                      WelcomePages(Colors.green, _controller),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(),
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
  final _controller;

  const WelcomePages(this.color, this._controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: this.color,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: this.color,
      ),
    );
  }
}
