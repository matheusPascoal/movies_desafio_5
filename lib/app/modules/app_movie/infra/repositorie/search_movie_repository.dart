import 'package:dartz/dartz.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/errors/errors.dart';

import '../../domain/repositories/get_search_movies_repository.dart';
import '../datasource/search_movie_datasource.dart';
import '../mapper/movie_mapper.dart';

class GetSearchMovie implements IGetSearchMovieRepository {
  final SearchMovieDatasource datasource;
  GetSearchMovie(this.datasource);

  @override
  Future<Either<SystemError, MovieEntity>> getSearchMovies(String name) async {
    try {
      final map = await datasource.getSearchMovies(name);

      return Right(MovieMapper.fromMap(map));
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
