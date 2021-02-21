import 'dart:math';

import 'package:dipci/images/images.dart';
import 'package:dipci/screens/explorar_money.dart';
import 'package:dipci/screens/game_table.dart';
import 'package:dipci/screens/payment.dart';
import 'package:dipci/screens/tips.dart';
import 'package:dipci/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:dipci/colors/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final images = Images();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardStyle(images.wallet, 'Conoce el dinero', 170.0, 170.0,
                    0.086, ExplorerMoney(), context),
                cardStyle(images.gameTable, 'Tabla de juego', 170.0, 170.0,
                    0.09, GameTable(), context),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardStyle(images.paymentethods, 'Formas de pago', 170.0, 170.0,
                    0.086, Payment(), context),
                cardStyle(
                    images.tips, 'Tips', 170.0, 170.0, 0.09, Tips(), context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cardStyle(String image, String text, double height, double width,
      double fontSize, dynamic clase, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => clase));
      },
      child: Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey[300])],
            borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 0, left: 15, right: 15, top: 15),
                  child: SvgPicture.asset(
                    image,
                    fit: BoxFit.contain,
                    placeholderBuilder: (context) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: colorPrincipal,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize:
                          sqrt((height * height) + (width * width)) * fontSize,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
