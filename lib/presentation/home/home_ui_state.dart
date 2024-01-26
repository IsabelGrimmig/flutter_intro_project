import '../../domain/models/movie_preview.dart';

class HomeUIState {
  const HomeUIState({
    this.popularMovies,
    this.topRatedMovies,
    this.upcomingMovies,
  });
  final List<MoviePreview>? popularMovies;
  final List<MoviePreview>? topRatedMovies;
  final List<MoviePreview>? upcomingMovies;

  HomeUIState copyWith({
    List<MoviePreview>? popularMovies,
    List<MoviePreview>? topRatedMovies,
    List<MoviePreview>? upcomingMovies,
  }) =>
      HomeUIState(
        popularMovies: popularMovies ?? this.popularMovies,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
      );
}
