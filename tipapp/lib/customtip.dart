import 'package:flutter/material.dart';
import 'package:tipapp/models/calculator.dart';

class CustomTip extends StatefulWidget {
  const CustomTip({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  State<CustomTip> createState() => _CustomTipState();
}

class _CustomTipState extends State<CustomTip> {
  TextEditingController textController = TextEditingController();

  onDone() {
    widget.bill.tipAmount = double.parse(textController.text);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(24),
      child: Column(children: [
        const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Enter Custom Tip",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        TextFormField(
          controller: textController,
          decoration: const InputDecoration(labelText: "Enter Tip"),
          keyboardType: TextInputType.number,
        ),
        const Padding(padding: EdgeInsets.all(12)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"))),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: onDone,
                  child: const Text("Done"),
                ))
          ],
        )
      ]),
    ));
  }
}
