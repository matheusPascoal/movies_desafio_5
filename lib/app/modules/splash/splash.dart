import 'dart:async';

import 'package:flutter/material.dart';

import '../app_movie/presenter/search_page/page/search_movies.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchMovies(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeApp = Theme.of(context);
    return Scaffold(
      backgroundColor: themeApp.backgroundColor,
      body: const Center(
        child: Icon(Icons.movie)
        //  Image.asset(ImagesApp.logo),
        ,
      ),
    );
  }
}
