import 'package:dartz/dartz.dart';

import '../entities/genre_entity.dart';
import '../entities/movies_entity.dart';

import '../errors/errors.dart';
import '../repositories/get_filter_movie_repository.dart';

abstract class IGetMovieCategoryUsecase {
  Future<Either<SystemError, List<GenreEntity>>> getFilteredMovies(
    GenreEntity category,
  );
}

class GetFilterGenre implements IGetMovieCategoryUsecase {
  final IGetFilterMoviesRepository repository;
  GetFilterGenre(this.repository);

  @override
  Future<Either<SystemError, List<GenreEntity>>> getFilteredMovies(
    GenreEntity category,
  ) async {
    return await repository.getFilteredMovies(category);
  }
}
