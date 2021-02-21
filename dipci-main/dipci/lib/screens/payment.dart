import 'package:dipci/util/utils.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with SingleTickerProviderStateMixin {
  TabController _controllerTab;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerTab = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar3(context, _controllerTab),
      body: TabBarView(
        controller: _controllerTab,
        children: [Cash(), Target(), Checks()],
      ),
    );
  }
}

class Cash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Target extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Checks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: 'iLnmTe5Q2Qw',
//     flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: true,
//     ),
// );

// YoutubePlayer(
//     controller: _controller,
//     showVideoProgressIndicator: true,
//     videoProgressIndicatorColor: Colors.amber,
//     progressColors: ProgressColors(
//         playedColor: Colors.amber,
//         handleColor: Colors.amberAccent,
//     ),
//     onReady () {
//         _controller.addListener(listener);
//     },
// ),
