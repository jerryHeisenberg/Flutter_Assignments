import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/models/casts.dart';

class CastItem extends StatelessWidget {
  const CastItem({Key? key, required this.cast}) : super(key: key);
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width*0.3 ,
        padding: const EdgeInsets.all(8),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    
      CircleAvatar(
        radius: 36,
        backgroundColor: Colors.black,
        backgroundImage: NetworkImage(cast.casturl),
      ),
Align(
  alignment: Alignment.center,
      child: Text('${cast.name}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ))),
                            Padding(padding: EdgeInsets.all(8)),
      Align(
        alignment: Alignment.center,
      child:Text('${cast.role}',
      style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            
      ))
    ]));
  }
}
