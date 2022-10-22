import 'genre_entity.dart';

class MovieEntity {
  final String backdropPath;
  final int id;
  final String originalLinguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final int voteCount;
  final double voteAverage;
  final String tagline;
  final String status;
  final List<GenreEntity> genres;

  MovieEntity({
    required this.genres,
    required this.status,
    required this.tagline,
    required this.backdropPath,
    required this.id,
    required this.originalLinguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteCount,
    required this.voteAverage,
  });
}
