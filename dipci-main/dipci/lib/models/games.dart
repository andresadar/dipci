import 'package:dipci/colors/color.dart';
import 'package:dipci/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Game extends StatefulWidget {
  final image;
  final text;
  final answer1;
  final answer2;
  final answer3;
  final answerCorrect;
  final controller;
  final function;
  final textButton;

  const Game({ this.image, this.text, this.answer1, 
  this.answer2, this.answer3, this.answerCorrect, this.controller, this.function, this.textButton});


  
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  int select;
  final images = Images();

  @override
  void initState() { 
    select = 0;
    super.initState();  
  }

  void setSelectedRadio(int val){
    setState(() {
      select = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(flex: 2,child: Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(widget.image),
                )),
              Divider(thickness: 2,),

              Expanded(flex: 1,
              child: Center(
                child: SingleChildScrollView(
                  child: Container(padding: EdgeInsets.all(10), 
                  child: Text (widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28),)
                    
                    ),
                ),
              )),
              Expanded(flex: 2,
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
               children: [
                 Align(
                  alignment: Alignment.centerLeft, 
                  child: Text('Respuestas:', 
                  style: TextStyle(fontSize: 28),)),
                 RadioListTile(
                  title: Text(widget.answer1), 
                  value: 1, groupValue: select,
                  onChanged: (val){
                    print('$val');
                    setSelectedRadio(val);
                  }),

                 RadioListTile(
                  title: Text(widget.answer2), 
                  value: 2, groupValue: select, 
                  
                  onChanged: (val){
                    print('$val');
                    setSelectedRadio(val);
                 }),

                 RadioListTile(
                  title: Text(widget.answer3),
                  value: 3, groupValue: select, 
                 onChanged: (val){
                    print('$val');
                   setSelectedRadio(val);
                 }),
               ],
              )
              ),),
            ],
          ),
        ),
      ),
        bottomNavigationBar: GestureDetector(
        onTap: (){
          if (select == widget.answerCorrect){
           // TODO: Agregar los actions, validar respuesta y pasar a la siguiente page
           showDialog(
           barrierDismissible: false,  
           context: context,
           builder: (context){
           return AlertDialog(
              title: Column(
                children: [
                  SvgPicture.asset(images.check),
                  Text('¡Muy bien!')
                ]
              ) ,
              actions: [
                FlatButton(onPressed: widget.function, child: Text('Continuar'))
              ],
           );
           },
          );
          } else {
           //TODO: Navigator.top 
           showDialog(
           barrierDismissible: false,   
           context: context,
           builder: (context){
           return AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.close,color: Colors.red),
                  Text('¡Casi!')
                ]
              ) ,
              actions: [
                FlatButton(onPressed: () => Navigator.pop(context), 
                child: Text('Volver'))
              ],
           );
           },
          );
          }},
        child: Container(
          height: 60,
          color: colorPrincipal,
          child: Center(
            child: Text(widget.textButton, style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              
              ),)),
        ),
      ),
    );
  }
}