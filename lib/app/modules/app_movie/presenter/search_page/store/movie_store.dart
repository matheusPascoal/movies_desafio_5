import 'package:flutter/foundation.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:movies_desafio_5/app/modules/app_movie/presenter/search_page/store/state/movie_state.dart';

import '../../../domain/entities/movies_entity.dart';
import '../../../domain/errors/errors.dart';
import '../../../domain/usecase/get_all_movies.dart';

class MovieStore extends StreamStore<SystemError, List<MovieEntity>> {
  final IGetAllMoviesUsecase _usecase; //ENCAPSULAMENTO
  MovieStore(this._usecase) : super([]);

  Future<void> getAllMovies() async {
    setLoading(true);
    final response = await _usecase.getAllMovies();

    response.fold((l) => setError(l), (r) => update(r));
  }
}
