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
  Future<Either<SystemError, MovieEntity>> getMovieInfo(id) async {
    try {
      final response = await datasource.getMovieInfo(id);
      final result = response;
      return Right(result);
    } on SystemError catch (e) {
      return Left(e);
    }
  }
}
