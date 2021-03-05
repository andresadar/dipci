import 'package:dipci/util/util.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'suuLcKyyLSU&t',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
      captionLanguage: 'es',
      isLive: false,
      loop: false,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar2(context),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(15),
                    child: 
                        Text('En este video encontraras ideas que te ayudaran a darle un buen manejo al dinero y las compras que realizas con este.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500))),
              )
            ],
          );
        },
      ),
    );
  }
}
