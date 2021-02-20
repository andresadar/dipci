import 'package:dipci/images/images.dart';
import 'package:flutter/material.dart';
import 'package:dipci/colors/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final images = Images();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'dipci',
            style: TextStyle(color: colorPrincipal, fontSize: 35.0),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.help_outline,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () {
                //TODO: PONER UN AlertDialog de ayuda.
              },
            )
          ],
        ),
        body: Center(
          child:
              cardStyle(images.paymentethods, 'Conoce el dinero', 200.0, 200.0),
        ));
  }

  Widget cardStyle(String image, String text, double height, double width) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(flex: 4, child: SvgPicture.asset(image)),
            Expanded(
              flex: 1,
              child: Container(
                color: colorPrincipal,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
