import 'package:flutter/material.dart';
import 'package:movieapp/Details/Info.dart';
import 'package:movieapp/Details/castItem.dart';
import 'package:movieapp/Details/castList.dart';
import 'package:movieapp/Details/detailsbtn.dart';
import 'package:movieapp/models/movieItems.dart';
import 'package:movieapp/Details/playbtn.dart';
import 'package:movieapp/Details/ratings.dart';
import 'package:movieapp/Details/topbar2.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key, required this.movie}) : super(key: key);
  final Movies movie;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(10, 10, 10, 1),
              Color.fromRGBO(23, 26, 36, 1)
            ])),
        child: Scaffold(
            backgroundColor: Colors.black45,
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.network(movie.movieUrl,
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [
                                  0.7,
                                  0.8
                                ])),
                      ),
                      const SafeArea(
                        minimum: EdgeInsets.fromLTRB(30, 50, 30, 30),
                        child: DetailsTopBar(),
                      ),
                      const SafeArea(
                        minimum: EdgeInsets.fromLTRB(30, 250, 10, 30),
                        child: Text(
                          'Preview',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SafeArea(
                        minimum: EdgeInsets.fromLTRB(30, 270, 10, 0),
                        child: DetailsBtns(),
                      )
                    ]),
                    MovieInfo(movie: movie),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  const Color.fromARGB(200, 255, 0, 0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.thumb_up_alt,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              '  Most Liked',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )),
                    const SafeArea(
                        minimum: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: PlayBtn()),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: Wrap(
                          spacing: 8,
                          children: movie.genre
                              .map((e) => Chip(label: Text(e)))
                              .toList(),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(movie.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold))),
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Prolog',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ))),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. Duis a arcu convallis, gravida purus eget, mollis diam. ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal))),
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Top Cast',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ))),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: const [CastList()])),
                  ]),
            )));
  }
}
