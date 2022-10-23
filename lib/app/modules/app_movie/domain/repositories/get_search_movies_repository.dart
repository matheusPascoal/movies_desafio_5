import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';

abstract class IGetSearchMovieRepository {
  Future<Either<SystemError, MovieEntity>> getSearchMovies(String name);
}
