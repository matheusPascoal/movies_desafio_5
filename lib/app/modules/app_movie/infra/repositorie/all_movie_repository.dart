import 'package:dartz/dartz.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_all_movies_repository.dart';
import '../datasource/all_movies_datasource.dart';
import '../mapper/movie_mapper.dart';

class GetAllMoviesRepository implements IGetAllMoviesRepository {
  final IAllMoviesDatasource datasource;

  GetAllMoviesRepository(this.datasource);

  @override
  Future<Either<SystemError, List<MovieEntity>>> getAllMovies() async {
    try {
      final response = await datasource.getAllMovies();
      final result = response.map((map) => MovieMapper.fromMap(map)).toList();
      return Right(result);
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
