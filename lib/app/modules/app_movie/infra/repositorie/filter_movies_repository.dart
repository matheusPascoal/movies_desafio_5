import 'package:dartz/dartz.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/entities/movies_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_filter_movies_repository.dart';
import '../datasource/filter_movie_datasource.dart';

class GetFilterMovies implements IGetFilterMoviesRepository {
  final FilterMoviesDatasource datasource;
  GetFilterMovies(this.datasource);

  @override
  Future<Either<SystemError, List<MovieEntity>>> getFilteredMovies(
    CategoryEntity category,
  ) async {
    try {
      final map = await datasource.getFilteredMovies(category);
      final result = List.from(map['results'])
          .map(
            (e) => MovieEntity(
              id: e['id'],
              name: e['original_title'],
              imagePath: e['poster_path'],
              accent: e['original_language'],
              voteAverage: e['vote_average'],
            ),
          )
          .toList();
      return Right(result);
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
