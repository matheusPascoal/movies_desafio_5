import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';

import '../repositories/get_info_movie_repository.dart';

abstract class IGetMovieInfoUsecase {
  Future<Either<SystemError, MovieEntity>> getMovieInfo(int id);
}

class GetMovieInfo implements IGetMovieInfoUsecase {
  final IGetInfoMovieRepository repository;
  GetMovieInfo(this.repository);

  @override
  Future<Either<SystemError, MovieEntity>> getMovieInfo(int id) async {
    return await repository.getMovieInfo(id);
  }
}
