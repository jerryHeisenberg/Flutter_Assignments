import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homeBanner extends StatelessWidget {
  const homeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  NetworkImage("https://static.wikia.nocookie.net/sonypicturesanimation/images/f/f8/Spider-Man_Across_the_Spider-Verse_poster_4.png/revision/latest?cb=20230501171710"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(1.0),
                  ],
                  stops: const [
                    0.6,
                    1.0
                  ])),
        ),
      ],
    );
  }
}
