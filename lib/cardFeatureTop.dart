import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String subtitle;
  final String valor;
  final Function press;


  CardCustom(this.title, this.subtitle, this.valor, this.press);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 200,
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
            ),
            child: Column(
              children: [
                Text(this.title),
                Text(this.subtitle),
                Spacer(),
                Text(this.valor ?? ''),
          ],
        ),
      ),
    );   
  }
}