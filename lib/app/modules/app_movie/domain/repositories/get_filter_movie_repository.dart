import 'package:dartz/dartz.dart';

import '../entities/genre_entity.dart';

import '../errors/errors.dart';

abstract class IGetFilterMoviesRepository {
  Future<Either<SystemError, List<GenreEntity>>> getFilteredMovies(
    GenreEntity category,
  );
}
