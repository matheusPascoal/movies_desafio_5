import 'package:dartz/dartz.dart';

import '../entities/category_entity.dart';
import '../entities/movies_entity.dart';

import '../errors/errors.dart';
import '../repositories/get_filter_movies_repository.dart';

abstract class IGetMovieCategoryUsecase {
  Future<Either<SystemError, List<MovieEntity>>> getFilteredMovies(
    CategoryEntity category,
  );
}

class GetFilterGenre implements IGetMovieCategoryUsecase {
  final IGetFilterMoviesRepository repository;
  GetFilterGenre(this.repository);

  @override
  Future<Either<SystemError, List<MovieEntity>>> getFilteredMovies(
    CategoryEntity category,
  ) async {
    return await repository.getFilteredMovies(category);
  }
}
