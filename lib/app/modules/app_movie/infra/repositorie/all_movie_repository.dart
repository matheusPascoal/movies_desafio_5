import 'package:dartz/dartz.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_all_movies_repository.dart';
import '../datasource/all_movies_datasource.dart';

class GetAllMoviesRepository implements IGetAllMoviesRepository {
  final IAllMoviesDatasource datasource;

  GetAllMoviesRepository(this.datasource);

  @override
  Future<Either<SystemError, List<MovieEntity>>> getAllMovies() async {
    try {
      final map = await datasource.getAllMovies();
      final result = List.from(map['results'])
          .map(
            (e) => MovieEntity(
              id: e['id'],
              name: e['original_title'],
              imagePath: e['poster_path'],
              accent: e['original_language'],
              voteAverage: e['vote_average'],
            ),
          )
          .toList();
      return Right(result);
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
