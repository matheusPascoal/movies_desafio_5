import 'package:dartz/dartz.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_info_movie_repository.dart';
import '../datasource/info_movie_datasource.dart';
import '../mapper/movie_mapper.dart';

class GetInfoMovie implements IGetInfoMovieRepository {
  final InfoMoviesDatasource datasource;
  GetInfoMovie(this.datasource);

  @override
  Future<Either<SystemError, MovieEntity>> getMovieInfo(int id) async {
    try {
      final map = await datasource.getMovieInfo(id);

      return Right(MovieMapper.fromMap(map));
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
