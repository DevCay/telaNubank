import 'package:flutter/material.dart';
import 'package:flutter_application_1/menuBottomButton.dart';


class MenuBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    

    List<Map<String, dynamic>> data = [
      {
        "text": "Pix",
        "icon": Icons.graphic_eq_rounded,
        "press": (){}, 
      },

      {
        "text": "Pagar",
        "icon": Icons.payment,
        "press": (){}, 
      },

      {
        "text": "Indicar amigos",
        "icon": Icons.people_alt_outlined,
        "press": (){}, 
      },
      {
        "text": "Transferir",
        "icon": Icons.money,
        "press": (){}, 
      },
      {
        "text": "Depositar",
        "icon": Icons.money_off,
        "press": (){}, 
      },
      {
        "text": "Empréstimo",
        "icon": Icons.handyman_outlined,
        "press": (){}, 
      },
      {
        "text": "Cartão virtual",
        "icon": Icons.card_giftcard_outlined,
        "press": (){}, 
      },
      {
        "text": "Bloquear cartão",
        "icon": Icons.lock_open_outlined,
        "press": (){}, 
      },
      {
        "text": "Ajustar limite",
        "icon": Icons.grid_off_outlined,
        "press": (){}, 
      },
      {
        "text": "Me ajuda",
        "icon": Icons.help_center_outlined,
        "press": (){}, 
      },
    ];
    return Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index){
                return MenuBottomButton(
                  data[index]["text"],
                  data[index]["icon"],
                  (BuildContext ctx){ Navigator.of(ctx).pushNamed(data[index]['route'],
              );
            }
          );               //return MenuBottomButton("", Icons.settings_applications, (){});                     //return MenuBottomButton(text: "", icon: Icons.ac_unit, press: (){});               
        }
      ),
    );
  }
}