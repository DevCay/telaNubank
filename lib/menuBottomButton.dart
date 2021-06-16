import 'package:flutter/material.dart';


class MenuBottomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function press;

  MenuBottomButton(this.text, this.icon, this.press);
  //MenuBottomButton({this.text, this.icon, this.press});


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all(Color(0xFF9028d7)),
        ),
        onPressed: (){},
        child: Container (
          padding: const EdgeInsets.all(7),
          width: 95,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                this.icon,
                color: Colors.white,
                size: 27,
                ),
              Spacer(),
              Text(
                this.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}