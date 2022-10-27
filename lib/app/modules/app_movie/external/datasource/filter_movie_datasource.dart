import '../../domain/errors/errors.dart';
import '../../infra/datasource/all_movies_datasource.dart';
import '../http_client/http_client.dart';

class FilterMoviesDatasource implements IAllMoviesDatasource /*TROCAR*/ {
  final HttpClient httpClient;
  FilterMoviesDatasource(this.httpClient);

  @override
  Future<List<Map<String, dynamic>>> getAllMovies() async {
    try {
      final url =
          'https://api.themoviedb.org/3/movie/550?api_key=eeddb37f3724a135c35c21be0b71682a';
      return httpClient.get(url);
    } on HttpError catch (e) {
      throw DatasourceError(e.message);
    }
  }
}
