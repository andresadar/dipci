import 'package:dipci/colors/color.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
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
  );
}

Widget appBar2(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'dipci',
      style: TextStyle(color: colorPrincipal, fontSize: 35.0),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () => Navigator.pop(context),
    ),
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
  );
}

Widget appBar3(BuildContext context, TabController _controllerTab) {
  return AppBar(
    bottom: TabBar(
      controller: _controllerTab,
      labelColor: Colors.black,
      tabs: [
        Tab(text: 'Efectivo'),
        Tab(text: 'Tarjetas'),
        Tab(text: 'Cheques')
      ],
    ),
    backgroundColor: Colors.white,
    title: Text(
      'dipci',
      style: TextStyle(color: colorPrincipal, fontSize: 35.0),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () => Navigator.pop(context),
    ),
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
  );
}
