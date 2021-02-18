import 'package:dipci/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dipci',
      home: WelcomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
