import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/allMovie_list.dart';
import 'package:movieapp/allMovies.dart';
import 'package:movieapp/home/List_Home.dart';
import 'package:movieapp/home/homePage.dart';

class PageZero extends StatefulWidget {
  const PageZero({super.key});

  @override
  State<PageZero> createState() => _PageZeroState();
}

class _PageZeroState extends State<PageZero> {
  
  List<Widget> pages = [
    const MoviePage(),
    const Text('Work in Progress'),
    const Text('Work in Progress'),
    const MovieTab()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
            Color.fromRGBO(0, 0, 0, 1.0),
            Color.fromRGBO(0, 0, 0, 0.479),
            //Color.fromRGBO(5, 5, 7, 0.692),
          ])),

          child: Scaffold(
            backgroundColor: Colors.transparent,

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            showUnselectedLabels: false,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey.withOpacity(0.1),
            
            
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: '.', 
              ),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: '.',),
              BottomNavigationBarItem(icon: Icon(Icons.cloud_download_sharp),
              label: '.',),
              BottomNavigationBarItem(icon: Icon(Icons.movie),
              label: '.',)
            ],
            
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,

            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            
          ),
          body: SafeArea(child:SingleChildScrollView(
            child: pages[currentIndex],
          ),
          ),
          

          )

    );
  }
}
