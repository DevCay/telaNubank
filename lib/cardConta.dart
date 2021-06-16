import 'package:flutter/material.dart';

class CardConta extends StatelessWidget {

  final bool visible;

  CardConta({this.visible});

  Widget buildValue(){
    if(this.visible == true){
      return Text(
        "R\$ 500,00",
        style: TextStyle(
          fontSize: 30,
        ),
      );
    }else{
      return Container(
        height: 50,
        width: 200,
        color: Colors.grey,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.monetization_on,
                size: 25,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Conta",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            "Saldo disponível",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          buildValue(),
        ],
      ), 
    );
  }
}