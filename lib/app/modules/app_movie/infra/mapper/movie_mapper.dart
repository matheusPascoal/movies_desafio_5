import '../../domain/entities/movies_entity.dart';

class MovieMapper {
  MovieMapper._();

  static MovieEntity fromMap(Map<String, dynamic> map) {
    return MovieEntity(
      id: map['id'],
      name: map['name'],
      accent: map['accent'],
      imagePath: map['image_path'],
      voteAverage: map['vote_average'],
    );
  }
}
