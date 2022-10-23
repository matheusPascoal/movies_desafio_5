import '../../domain/entities/movies_entity.dart';

abstract class InfoMoviesDatasource {
  Future<MovieEntity> getMovieInfo();
}
