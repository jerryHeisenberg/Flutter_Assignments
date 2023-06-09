import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/movieItem.dart';

class AllMovies extends StatefulWidget {
  const AllMovies({Key? key}) : super(key: key);
 

  @override
  State<AllMovies> createState() => _AllMoviesState();
}

class _AllMoviesState extends State<AllMovies> {
  List<Movies> movies = [];

  @override
  void initState() {
    int startIndex = 0;
    int endIndex = 34;
    movies = List.from(Movies.movieList.getRange(startIndex, endIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Expanded(child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  movies.length,
                  (index) => MovieItem(
                        movie: movies[index],
                      )),
            ),
            )
            
          ],
        ));
  }
}
