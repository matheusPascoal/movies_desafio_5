import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies_desafio_5/app/modules/app_movie/infra/repositorie/all_movie_repository.dart';
import 'package:uno/uno.dart';

import '../splash/splash_module.dart';
import 'domain/entities/movies_entity.dart';
import 'domain/repositories/get_all_movies_repository.dart';
import 'domain/usecase/get_all_movies.dart';
import 'external/datasource/all_movies_datasource.dart';
import 'external/http_client/http_client.dart';
import 'external/http_client/uno_http_client.dart';
import 'infra/datasource/all_movies_datasource.dart';
import 'presenter/search_page/page/search_movies.dart';
import 'presenter/search_page/store/movie_store.dart';

class AppMovieModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAllMoviesDatasource>((i) => AllMoviesDatasource(i())),
        Bind<IGetAllMoviesRepository>((i) => GetAllMoviesRepository(i())),
        Bind<IGetAllMoviesUsecase>((i) => GetMovieUsecase(i())),
        Bind.singleton((i) => MovieStore(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => SearchMovies(
        store: Modular.get<MovieStore>(),
        searchEntity: MovieEntity(
          accent: '',
          id: 550,
          imagePath: '',
          name: 'Name',
          voteAverage: 0,
        ),
      ),
    ),
  ];
}
