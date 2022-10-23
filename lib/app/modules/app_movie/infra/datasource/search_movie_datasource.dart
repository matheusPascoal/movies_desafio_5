import '../../domain/entities/movies_entity.dart';

abstract class SearchMovieDatasource {
  Future<MovieEntity> getSearchMovies();
}
