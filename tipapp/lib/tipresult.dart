import 'dart:ui';

import 'package:tipapp/models/calculator.dart';
import 'package:flutter/material.dart';

class TotalTip extends StatelessWidget {
  const TotalTip({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,

      ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
            const Text(" Per Person",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Color.fromARGB(255, 206, 42, 96)),),
        
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Text(
          "\$",
          style: TextStyle(
              fontSize: 20),
        ),
        
        Text(bill.getTotalAmountPerPerson(), style: const TextStyle(fontSize: 36),textAlign:TextAlign.left,),

          ]
        ),
        const Text("\nTOTAL"),
        Column(mainAxisSize: MainAxisSize.min, children: [
          const Text("SUBTOTAL"),
          Text("\$"+bill.getAmountPerPerson()),
          const Text("TIP"),
          Text("\$"+bill.getTipPerPerson()),
        ])
      ],
    ));
  }
}
