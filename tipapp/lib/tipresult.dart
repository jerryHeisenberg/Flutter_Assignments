import 'package:tipapp/models/calculator.dart';
import 'package:flutter/material.dart';

class TotalTip extends StatelessWidget {
  const TotalTip({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(16)),
            
             Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              
              Text.rich(
                TextSpan(
                  children: [

                    const TextSpan(
                      text: "PER PERSON",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Color.fromARGB(255, 206, 42, 96) )
                    ),
                    const TextSpan(
                      text: "\n\$\n",
                      style: TextStyle(fontSize: 20)
                    ),
                    
                    TextSpan(
                      text: "\t"+bill
                          .getTotalAmountPerPerson()
                          .split('.')[0], // Number before the decimal point
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '.${bill.getTotalAmountPerPerson().split('.')[1]}', // Number after the decimal point
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    const TextSpan(
                      text: "\nTOTAL",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ]),
             const Padding(padding: EdgeInsets.only(right: 25)),
            const VerticalDivider(
              width: 20,
              indent: 5,
              endIndent: 5,
              color: Colors.grey,
              thickness: 1,
            ),
             const Padding(padding: EdgeInsets.only(right: 40)),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("SUBTOTAL",style: TextStyle(fontSize: 12),),
                  Text(
                    "\$" + bill.getAmountPerPerson(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text("TIP",style: TextStyle(fontSize: 12),),
                  Text(
                    "\$" + bill.getTipPerPerson(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                   const Padding(padding: EdgeInsets.only(bottom: 20)),
                ])
          ],
        ));
  }
}
