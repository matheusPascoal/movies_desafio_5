import '../../domain/entities/category_entity.dart';

abstract class FilterMoviesDatasource {
  Future<Map<String, dynamic>> getFilteredMovies(CategoryEntity category);
}
