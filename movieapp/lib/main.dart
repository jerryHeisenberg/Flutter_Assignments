import 'package:flutter/material.dart';
import 'package:movieapp/PageZero.dart';
import 'package:movieapp/allMovies.dart';
import 'package:movieapp/home/homePage.dart';
import 'package:movieapp/home/trendingList.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/Details/movieDetails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: PageZero(),
      routes: {
      
        '/movieDetails':(context) => MovieDetails(movie: ModalRoute.of(context)?.settings.arguments as Movies),
      },
    );
  }
}
