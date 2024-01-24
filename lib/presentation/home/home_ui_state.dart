import '../../domain/models/movies_list_response.dart';

class HomeUIState {
  const HomeUIState({this.popularMovies, this.actionMovies});
  final MoviesListResponse? popularMovies;
  final MoviesListResponse? actionMovies;

  HomeUIState copyWith({
    MoviesListResponse? popularMovies, 
    MoviesListResponse? actionMovies,
  }) =>
      HomeUIState(popularMovies: popularMovies ?? this.popularMovies, actionMovies: actionMovies ?? this.actionMovies);
}