import 'package:flutter/material.dart';

class GreetingTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
            child: RichText(
              text: TextSpan(
                text: 'Olá, Caynã',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
             children: <InlineSpan>[
          ]
        ),
      ),
    );
  }
}