import '../../domain/entities/genre_entity.dart';

class GenreMapper {
  GenreMapper._();

  static GenreEntity fromMap(Map<String, dynamic> map) {
    return GenreEntity(
      name: map['name'],
      id: map['id'],
    );
  }
}
