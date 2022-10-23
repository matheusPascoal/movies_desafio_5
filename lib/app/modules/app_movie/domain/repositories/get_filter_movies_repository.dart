import 'package:dartz/dartz.dart';

import '../entities/category_entity.dart';
import '../entities/movies_entity.dart';
import '../errors/errors.dart';

abstract class IGetFilterMoviesRepository {
  Future<Either<SystemError, List<MovieEntity>>> getFilteredMovies(
    CategoryEntity category,
  );
}
