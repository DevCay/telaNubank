import 'package:flutter/material.dart';

class CardInsurance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.umbrella_rounded,
                color: const Color(0xFF830ad1),
                size: 25,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Seguro de vida",
                style: TextStyle(
                  color: const Color(0xFF830ad1),
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Text("Conheça Nubank Vida: um seguro simples e que cabe no bolso."),
          TextButton(
            onPressed: (){},
            child: Text("CONHECER",
            style: TextStyle(
              color: const Color(0xFF830ad1),
              fontSize: 15,
              ),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(color: const Color(0xFF830ad1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}