import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/home/latest.dart';
import 'package:movieapp/home/trendingList.dart';
import 'package:movieapp/home/upcoming.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Trending Now',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            )),
                        Text('See all',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ))
                      ],
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: const [TrendingMovies()])),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Latest Movies',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            )),
                        Text('See all',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ))
                      ],
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: const [LatestMovies()])),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Upcoming Movies',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            )),
                        Text('See all',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ))
                      ],
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: const [UpcomingMovies()])),
       
      ],
    );
  }
}
