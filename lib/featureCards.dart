import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardConta.dart';
import 'package:flutter_application_1/cardCreditCard.dart';
import 'package:flutter_application_1/cardInsurance.dart';
import 'package:flutter_application_1/cardRewards.dart';


class FeatureCards extends StatelessWidget {

  final bool visible;

  FeatureCards({this.visible});

  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            CardCredit(visible: this.visible),
            SizedBox(
              height: 15,
            ),
            CardConta(visible: this.visible),
            SizedBox(
              height: 15,
            ),
            CardInsurance(),
            SizedBox(
              height: 15,
            ),
            CardRewards(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );   
  }
}