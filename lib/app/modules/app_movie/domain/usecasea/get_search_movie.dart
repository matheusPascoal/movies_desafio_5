import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';
import '../repositories/get_search_movies_repository.dart';

abstract class IGetSearchUsecase {
  Future<Either<SystemError, MovieEntity>> getSearchMovies(name);
}

class GetSearchMovies implements IGetSearchUsecase {
  final IGetSearchMovieRepository repository;
  GetSearchMovies(this.repository);

  @override
  Future<Either<SystemError, MovieEntity>> getSearchMovies(name) async {
    return await repository.getSearchMovies(name);
  }
}
