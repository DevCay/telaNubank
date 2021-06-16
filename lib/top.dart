import 'package:flutter/material.dart';
import 'greetingTop.dart';
import 'iconesTop.dart';

class Top extends StatelessWidget {

  final bool visible;
  final Function visibilityChange;

  Top({this.visible = true, this.visibilityChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GreetingTop(),
                IconesTop(visibilityChange: this.visibilityChange, visible: this.visible),
              ],
            ),
          );
  }
}