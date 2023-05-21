import 'package:flutter/material.dart';
import 'package:tipapp/models/calculator.dart';
import 'package:tipapp/result.dart';
import 'package:tipapp/tipresult.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'package:tipapp/customtip.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  ThemeMode _themeMode = ThemeMode.light;
  Bill bill = Bill(totalAmount: 0, tipAmount: 0, noOfPeople: 1);
  int dollars = 50;
  int cents = 49;
  int persons = 0;
  int value = 0;
  late String customTip;

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  calculatedTip(double percentage) {
    bill.tipAmount = bill.totalAmount * percentage / 100;
    setState(() {});
  }

  opneCustomTip(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return  Padding(
          padding:
              EdgeInsets.only(bottom: 12),
          child: CustomTip(bill: bill),
        );
      },
    ).then((value) {
      setState(() {});
    });
  }

  ButtonStyle customStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return const Color.fromARGB(
              255, 206, 42, 96); // Color when the button is selected
        }
        return const Color.fromARGB(255, 255, 255, 255); // Default button color
      },
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Set the desired border radius value
    ),
  ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              const Padding(padding: EdgeInsets.only(right: 220)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.wb_sunny_outlined)),
            ],
          ),
          TotalTip(bill: bill),
          const Padding(padding: EdgeInsets.all(12)),
          TotalBill(bill: bill),

          Wrap(
            spacing: 5,
            children: [
              ElevatedButton(
                onPressed: () {
                  calculatedTip(10);
                },
                style: customStyle,
                child: const Text("10%"),
              ),
              ElevatedButton(
                  onPressed: () {
                    calculatedTip(15);
                  },
                  style: customStyle,
                  child: const Text("15%")),
              ElevatedButton(
                  onPressed: () {
                    calculatedTip(20);
                  },
                  style: customStyle,
                  child: const Text("20%")),
              ElevatedButton(
                onPressed: () {
                  opneCustomTip(context);
                },
                style: customStyle,
                child: const Text("Custom Tip"),
              )
            ],
          ),
          //  totalAmount(bill: bill),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "TOTAL AMOUNT",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 206, 42, 96)),
              textAlign: TextAlign.left,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () =>
                  {dollars++, bill.totalAmount = dollars.toDouble()},
              icon: const Icon(Icons.arrow_drop_up),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
            IconButton(
              onPressed: () => {cents++, bill.totalAmount = cents.toDouble()},
              icon: const Icon(Icons.arrow_drop_up),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
          ]),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "\$",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              WheelSlider.number(
                  allowPointerTappable: false,
                  verticalListHeight: 110,
                  totalCount: 1000,
                  initValue: 10,
                  horizontal: false,
                  unSelectedNumberStyle:
                      const TextStyle(fontSize: 16, color: Colors.black),
                  onValueChanged: (value) {
                    setState(() {
                      dollars = value;
                      bill.totalAmount = dollars.toDouble();
                    });
                  },
                  currentIndex: 10),
              WheelSlider.number(
                  allowPointerTappable: false,
                  verticalListHeight: 110,
                  totalCount: 1000,
                  initValue: 10,
                  horizontal: false,
                  unSelectedNumberStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 16, color: Color.fromARGB(255, 206, 42, 96)),
                  onValueChanged: (value) {
                    setState(() {
                      cents = value;
                      bill.totalAmount = dollars + cents.toDouble() / 100;
                    });
                  },
                  currentIndex: 10),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () =>
                  {dollars--, bill.totalAmount = dollars.toDouble()},
              icon: const Icon(Icons.arrow_drop_down),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
            IconButton(
              onPressed: () => {cents--, bill.totalAmount = cents.toDouble()},
              icon: const Icon(Icons.arrow_drop_down),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
          ]),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "SPLIT",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 206, 42, 96)),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () {
                setState(() {
                  persons--;
                  bill.noOfPeople = persons.toDouble();
                });
              },
              icon: const Icon(Icons.remove_circle_outline),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
            Text(
              persons.toString(),
              style: const TextStyle(fontSize: 28),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  persons++;
                  bill.noOfPeople = persons.toDouble();
                });
              },
              icon: const Icon(Icons.add_circle_outline),
              color: const Color.fromARGB(255, 206, 42, 96),
            ),
          ]),
        ]),
      ),
    );
  }
}
