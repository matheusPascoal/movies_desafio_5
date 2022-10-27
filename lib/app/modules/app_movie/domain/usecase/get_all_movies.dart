import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';
import '../repositories/get_all_movies_repository.dart';

abstract class IGetAllMoviesUsecase {
  IGetAllMoviesUsecase(Object object);

  Future<Either<SystemError, List<MovieEntity>>> getAllMovies();
}

class GetMovieUsecase implements IGetAllMoviesUsecase {
  final IGetAllMoviesRepository repository;

  GetMovieUsecase(this.repository);

  @override
  Future<Either<SystemError, List<MovieEntity>>> getAllMovies() async {
    return await repository.getAllMovies();
  }
}
