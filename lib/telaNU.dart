import 'package:flutter/material.dart';
import 'package:flutter_application_1/menuBottom.dart';
import 'package:flutter_application_1/top.dart';
import 'featureCards.dart';


class Tela extends StatefulWidget {

  @override
  TelaState createState() => TelaState();
}

class TelaState extends State<Tela> {

  bool visible = true;

  void visibilityChange(){
    this.setState((){
      visible = !visible;
      // if(visible){
      //   visible = false;
      // }else{
      //   visible = true;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF830ad1),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Top(visibilityChange: this.visibilityChange, visible: this.visible,),
            SizedBox(
              height: 20,
            ),
            FeatureCards(visible: this.visible),
            MenuBottom(),
          ],
        ),
      ),
    );
  }
}