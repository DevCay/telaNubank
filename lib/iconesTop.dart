import 'package:flutter/material.dart';


class IconesTop extends StatelessWidget {

  final bool visible;
  final Function visibilityChange;

  IconesTop({this.visible = true, this.visibilityChange});

  Widget buildButton(IconData x){
    return ElevatedButton(
      onPressed: this.visibilityChange,
      child: Icon(
        x,
        size: 30,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(15, 15),
        primary: const Color(0xFF9028d7),
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        buildButton(this.visible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
        SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: (){},
          child: Icon(
            Icons.settings,
            size: 30,
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(15, 15),
            primary: const Color(0xFF9028d7),
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
        ),
      ],
    );
  }
}