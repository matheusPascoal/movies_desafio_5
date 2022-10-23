import '../../domain/entities/movies_entity.dart';

abstract class SearchMovieDatasource {
  Future<Map<String, dynamic>> getSearchMovies(String name);
}
