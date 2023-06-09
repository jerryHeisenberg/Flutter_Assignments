import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/movieItem.dart';

class LatestMovies extends StatefulWidget {
  const LatestMovies({Key? key}):super(key: key);

  @override
  State<LatestMovies> createState() => _LatestMoviesState();
}

class _LatestMoviesState extends State<LatestMovies> {
  List<Movies> movies = [];

  @override
  void initState() {
    int startIndex = 0;
    int endIndex = 6;
    movies = List.from(Movies.movieList.getRange(startIndex, endIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => MovieItem(
          movie: movies[index],
        ),
      ),
    );
  }
}