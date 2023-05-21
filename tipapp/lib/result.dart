import 'package:tipapp/models/calculator.dart';
import 'package:flutter/material.dart';

class TotalBill extends StatelessWidget {
  const TotalBill({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(padding: EdgeInsets.all(16)),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
               const Padding(padding: EdgeInsets.only(bottom: 10)),
              const Text(
                "\$",
                style: TextStyle(fontSize: 20),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: bill
                          .getTotalBill()
                          .split('.')[0], // Number before the decimal point
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '.${bill.getTotalBill().split('.')[1]}', // Number after the decimal point
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    const TextSpan(
                        text: "\nTOTAL",
                        style: TextStyle(
                          fontSize: 12,
                        ))
                  ],
                ),
                textAlign: TextAlign.left,
              ),
             
            ]),
            const Padding(padding: EdgeInsets.only(right: 55)),
            const VerticalDivider(
              width: 20,
              indent: 5,
              endIndent: 5,
              color: Colors.grey,
              thickness: 1,
            ),
            const Padding(padding: EdgeInsets.only(right: 48)),
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "SUBTOTAL",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "\$" + bill.getTotalAmount(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "TIP",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "\$" + bill.getTotalTip(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                ])
          ],
        ));
  }
}
