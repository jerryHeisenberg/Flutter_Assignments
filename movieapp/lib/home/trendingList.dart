import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/movieItem.dart';

class TrendingMovies extends StatefulWidget {
  const TrendingMovies({Key? key}) : super(key: key);

  @override
  State<TrendingMovies> createState() => _TrendingMoviesState();
}

class _TrendingMoviesState extends State<TrendingMovies> {
  List<Movies> movies = [];
  

  @override
  void initState() {
    int startIndex = 20;
    int endIndex = 36;
    movies = List.from(Movies.movieList.getRange(startIndex, endIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
