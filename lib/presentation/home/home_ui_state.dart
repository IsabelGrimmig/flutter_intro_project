import '../../domain/models/movies_list_response.dart';

class HomeUIState {
  const HomeUIState({
    this.popularMovies,
    this.topRatedMovies,
    this.upcomingMovies,
  });
  final MoviesListResponse? popularMovies;
  final MoviesListResponse? topRatedMovies;
  final MoviesListResponse? upcomingMovies;

  HomeUIState copyWith({
    MoviesListResponse? popularMovies,
    MoviesListResponse? topRatedMovies,
    MoviesListResponse? upcomingMovies,
  }) =>
      HomeUIState(
        popularMovies: popularMovies ?? this.popularMovies,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
      );
}
