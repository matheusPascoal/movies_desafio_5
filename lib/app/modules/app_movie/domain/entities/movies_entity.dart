class MovieEntity {
  final int id;
  final String name;
  final String imagePath;
  final String accent;
  final int voteAverage;

  MovieEntity({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.accent,
    required this.voteAverage,
  });
}
