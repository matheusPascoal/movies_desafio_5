import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';

abstract class IGetInfoMovieRepository {
  Future<Either<SystemError, MovieEntity>> getMovieInfo(int id);
}
