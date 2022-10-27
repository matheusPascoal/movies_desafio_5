abstract class SearchMovieDatasource {
  Future<List<Map<String, dynamic>>> getSearchMovies(String name);
}
