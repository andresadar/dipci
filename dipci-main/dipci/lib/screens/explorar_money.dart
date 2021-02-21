import 'package:dipci/colors/color.dart';
import 'package:dipci/util/utils.dart';
import 'package:flutter/material.dart';

class ExplorerMoney extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar2(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: PageView(
          controller: _controller,
          children: [pageStyle()],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        child: Container(
          height: 70,
          color: colorPrincipal,
          child: Center(
            child: Text(
              'Siguiente',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        onTap: () {
          _controller.nextPage(
              duration: Duration(milliseconds: 500), curve: Curves.decelerate);
        },
      ),
    );
  }

  Widget pageStyle() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.indigo,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ))
        ],
      ),
    );
  }
}
