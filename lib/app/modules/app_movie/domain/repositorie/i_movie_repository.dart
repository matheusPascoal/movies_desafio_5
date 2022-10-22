import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';

import '../errors/errors.dart';

abstract class IMovieRepository {
  Future<Either<SystemError, MovieEntity>> call(int id);
}
