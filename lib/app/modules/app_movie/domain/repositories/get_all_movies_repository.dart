import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';

import '../errors/errors.dart';

abstract class IGetAllMoviesRepository {
  Future<Either<SystemError, List<MovieEntity>>> getAllMovies();
}
