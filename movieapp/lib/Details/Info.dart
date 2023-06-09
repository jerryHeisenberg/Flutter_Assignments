import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/Details/ratings.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required this.movie}) : super(key: key);
  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Rating(rating: movie.ratings),
                        Text('${movie.year}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Text('${movie.getPlayBackTime()}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text('PG-13',
                            style:  TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                            const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text('4K',
                            style:  TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    );
  }
}