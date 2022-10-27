import 'package:flutter_modular/flutter_modular.dart';

import 'modules/app_movie/app_movie_module.dart';

import 'modules/splash/splash_module.dart';
import 'shared/core/core_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
        AppMovieModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/search/', module: AppMovieModule()),
  ];
}
