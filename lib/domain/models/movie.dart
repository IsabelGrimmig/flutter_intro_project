class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration;

  const Movie({
    required this.name,
    required this.imagePath,
    required this.videoPath,
    required this.category,
    required this.year,
    required this.Duration,
  });

  static const List<Movie> movie = [];
}
