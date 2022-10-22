import 'package:dartz/dartz.dart';

import '../entities/movies_entity.dart';
import '../errors/errors.dart';
import '../repositorie/i_movie_repository.dart';

abstract class IGetMovieUsecase {
  Future<Either<SystemError, MovieEntity>> call(int id);
}

class GetMovieUsecase implements IGetMovieUsecase {
  final IMovieRepository repository;

  GetMovieUsecase(this.repository);

  @override
  Future<Either<SystemError, MovieEntity>> call(int id) async {
    return repository(id);
  }
}
// TODO: FAZER  VALIDAÇÃO DO USE CASE
// RETORNAR LEFT NA VALIDAÇAO