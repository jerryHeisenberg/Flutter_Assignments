import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movieapp/home/List_Home.dart';
import 'package:movieapp/home/banner.dart';
import 'package:movieapp/home/bannerBtn.dart';
import 'package:movieapp/home/latest.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/Details/movieDetails.dart';
import 'package:movieapp/movieItem.dart';
import 'package:movieapp/home/topBar.dart';
import 'package:movieapp/home/trendingList.dart';
import 'package:movieapp/home/upcoming.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: const [
                  homeBanner(),
                  
                  SafeArea(
                      minimum: EdgeInsets.fromLTRB(30, 50, 30, 30),
                      child: topbar()),
                  // SafeArea(
                  //   minimum: EdgeInsets.fromLTRB(20, 360, 30, 30),
                  //   child: Text('Avengers: Endgame',
                  //       textAlign: TextAlign.start,
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.bold,
                  //       )),
                  // ),
                  SafeArea(
                      minimum: EdgeInsets.fromLTRB(30, 400, 30, 30),
                      child: BannerButtons()),
                ],
              ),
              const HomeList(),
              
            ],
          ),
        )
      ]),
    );
  }
}
