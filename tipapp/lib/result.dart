import 'dart:ui';

import 'package:tipapp/models/calculator.dart';
import 'package:flutter/material.dart';

class TotalBill extends StatelessWidget {
  const TotalBill({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,

      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "\$",
          style: TextStyle(
              fontFeatures: <FontFeature>[FontFeature.superscripts()]),
        ),
        Text(bill.getTotalBill(),style: const TextStyle(fontSize: 36),),
        const Text("\n\n\nTOTAL"),
        const VerticalDivider(
          width: 30,
          color: Colors.grey,
          thickness: 5,
        ),
        Column(mainAxisSize: MainAxisSize.min, children: [
          const Text("SUBTOTAL"),
          const Text(
            "\$",
            style: TextStyle(
                fontFeatures: <FontFeature>[FontFeature.superscripts()]),
          ),
          Text(bill.getTotalAmount()),
          const Text("TIP"),
          
          Text("\$"+bill.getTotalTip()),
        ])
      ],
    ));
  }
}
