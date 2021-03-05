

import 'package:dipci/colors/color.dart';
import 'package:dipci/util/util.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with SingleTickerProviderStateMixin {
  TabController _controllerTab;
  YoutubePlayerController cashController = YoutubePlayerController(
      initialVideoId: 'ZF1xwXMigME',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
        isLive: false,
        captionLanguage: 'es',
        mute: false,
      ));

  YoutubePlayerController targetController = YoutubePlayerController(
      initialVideoId: 'z3Ha78V9ZnQ',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
        isLive: false,
        captionLanguage: 'es',
        mute: false,
      ));

  YoutubePlayerController checksController = YoutubePlayerController(
      initialVideoId: '96nP-Ul-G7I',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
        isLive: false,
        captionLanguage: 'es',
        mute: false,
      ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerTab = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar3(context, _controllerTab),
      body: TabBarView(
        controller: _controllerTab,
        children: [
          Cash(
            controller: cashController,
          ),
          Target(controller: targetController,),
          Checks(controller: checksController,)
        ],
      ),
    );
  }
}

Scaffold pageStyle(
    {YoutubePlayerController controller, String title, String content}) {
  return Scaffold(
    body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) {
          return Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 28, color: colorPrincipal,fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30),
                        Text(content, textAlign: TextAlign.justify, style: TextStyle(fontSize: 25, color: Colors.black))
                      ],
                    ),
                  ))
            ],
          );
        }),
  );
}

class Cash extends StatelessWidget {
  final controller;

  const Cash({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return pageStyle(
        title: 'Efectivo', content: 'Se llama dinero efectivo al dinero en forma de monedas o papel moneda (billetes) que se utiliza para realizar pagos.', 
        controller: this.controller);
  }
}

class Target extends StatelessWidget {

  final controller;

  const Target({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return pageStyle(
        title: 'Tarjetas', content: 'Con este video podrás aprender que son las tarjetas de crédito o débito, sus diferencias y utilidades.', controller: this.controller);
  }
}

class Checks extends StatelessWidget {

  final controller;

  const Checks({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return pageStyle(
        title: 'Cheques', content:  'Con este video podrás aprender que es un cheque, como funciona el proceso de canje, las caracteristicas que tiene y el manejo que se le da en el diario vivir.', controller: this.controller);
  }
}
