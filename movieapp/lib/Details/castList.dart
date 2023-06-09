import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/Details/castItem.dart';
import 'package:movieapp/models/casts.dart';

class CastList extends StatefulWidget {
  const CastList({super.key});

  @override
  State<CastList> createState() => _CastListState();
}

class _CastListState extends State<CastList> {
  List<Cast> cast = [];
  
  @override
  void initState() {
    int startIndex = 0;
    int endIndex = 10;
    cast = List.from(Cast.castList.getRange(startIndex, endIndex));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cast.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => CastItem(
          cast: cast[index],
        ),
      ),
    );;
  }
}
