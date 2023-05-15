import 'package:flutter/material.dart';
import 'package:quoteapp/models/quote1.dart';
import 'dart:math';

class quoteApp extends StatefulWidget {
  const quoteApp({super.key});

  @override
  State<quoteApp> createState() => _quoteAppState();
}

class _quoteAppState extends State<quoteApp> {
  List<String> imagePath = [
    'assets/images/scene1.jpg',
    'assets/images/scene2.jpg',
    'assets/images/scene3.jpg',
    'assets/images/scene4.jpg',
    'assets/images/scene5.jpg',
    'assets/images/scene6.jpg',
    'assets/images/scene7.jpg',
  ];
  late Quote currentQuote;
  late String currentImage;
  Color randomColor = Colors.black;
  
  void getRandomQuote() {
    Random random = Random();
    int index = random.nextInt(Quote.quotes.length);
    setState(() {
      currentQuote = Quote.quotes[index];
    });
  }

  Color getRandomColor() {
    Random random = Random();
    int r = random.nextInt(255),
        g = random.nextInt(255),
        b = random.nextInt(256);
    return Color.fromARGB(255, r, g, b);
  }

  void getRandomImage() {
    Random random = Random();
    int index = random.nextInt(imagePath.length);
    setState(() {
      currentImage = imagePath[index];
    });
  }

  @override
  void initState() {
    super.initState();
    getRandomQuote();
    getRandomImage();
  }

  @override
  Widget build(BuildContext context) {
    Quote quoteItem = Quote.getRandomQuote();
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          getRandomQuote();
          getRandomImage();
        },
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            currentImage,
            fit: BoxFit.cover,
            
          ),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                quoteItem.quote,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: randomColor,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              Text(
                "-${quoteItem.author}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ]),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            randomColor = getRandomColor();
          });
        },
        tooltip: "Change Image",
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(
          Icons.color_lens,
        ),
      ),
    );
  }
}
