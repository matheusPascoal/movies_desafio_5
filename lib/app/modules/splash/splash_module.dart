import 'package:flutter_modular/flutter_modular.dart';

import 'splash.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const SplashPage(),
    ),
  ];
}
