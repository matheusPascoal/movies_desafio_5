import '../../domain/entities/genre_entity.dart';

abstract class FilterMoviesDatasource {
  Future<List<Map<String, dynamic>>> getFilteredMovies(GenreEntity category);
}
