class MovieEntity {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final bool isFavorite;

  MovieEntity({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    this.isFavorite = false,
  });
}
