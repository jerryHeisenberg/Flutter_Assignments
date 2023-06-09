import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class PlayBtn extends StatelessWidget {
  const PlayBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width*0.9,
        child: ElevatedButton(
          
            onPressed: () {},
            style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),backgroundColor:const Color.fromARGB(255, 84, 84, 84)),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
                Text(
                  'Play',
                  style: TextStyle(color: Colors.white),
                ),
              ],

            )
            ));
  }
}
