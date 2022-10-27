import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_movie/presenter/search_page/page/search_movies.dart';
import 'utils/image_logo.dart';

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
    timeSplash();
  }

  void timeSplash() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Modular.to.pushReplacementNamed('/search/'));
  }

  @override
  Widget build(BuildContext context) {
    final themeApp = Theme.of(context);
    return Scaffold(
        backgroundColor: themeApp.canvasColor,
        body: Center(
          child: Image.network(LogoUrl.urlImageLogo),
        ));
  }
}
