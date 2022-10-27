import 'package:dartz/dartz.dart';

import '../../domain/entities/genre_entity.dart';

import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_filter_movie_repository.dart';
import '../datasource/filter_movie_datasource.dart';
import '../mapper/genre_mapper.dart';

class GetFilterMovies implements IGetFilterMoviesRepository {
  final FilterMoviesDatasource datasource;
  GetFilterMovies(this.datasource);

  @override
  Future<Either<SystemError, List<GenreEntity>>> getFilteredMovies(
    GenreEntity category,
  ) async {
    try {
      final response = await datasource.getFilteredMovies(category);
      final result = response.map((e) => GenreMapper.fromMap(e)).toList();
      return Right(result);
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
