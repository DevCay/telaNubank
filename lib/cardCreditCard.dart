import 'package:flutter/material.dart';

class CardCredit extends StatelessWidget {

  final bool visible;

  CardCredit({this.visible});

  Widget buildValue(){
    if(this.visible == true){
      return Text(
        "R\$ 100,00",
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.card_giftcard,
                size: 25,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Cartão de Crédito",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            "Fatura atual",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          buildValue(),
          // RichText(
          //   text: "Limite disponível R\$ 600,00",
          //   ),
        ],
      ),
    );
  }
}