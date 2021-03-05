import 'package:dipci/global/global.dart';
import 'package:dipci/screens/home_page.dart';
import 'package:dipci/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){

  runApp(MyApp());
}

  Future <void>welcomeLoading() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var welcome = await prefs.getBool('welcome');
    Global.welcome = welcome;
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    
      future: welcomeLoading(),
      builder: (context, snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }


        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'dipci',
          home: Global.welcome == null ? WelcomePage() : HomePage(),
          theme: ThemeData(primarySwatch: Colors.deepPurple),
        );
      }
    );
  }
}
