import '../../domain/entities/movies_entity.dart';

class MovieMapper {
  MovieMapper._();

  static MovieEntity fromMap(Map<String, dynamic> map) {
    return MovieEntity(
      id: map['id'],
      accent: map['accent'],
      imagePath: map['imagePath'],
      voteAverage: map['favorite'],
      name: map['name'],
    );
  }
}
