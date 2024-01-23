import '../../domain/models/movies_list_response.dart';

class HomeUIState {
  const HomeUIState({this.movies});
  final MoviesListResponse? movies;

  HomeUIState copyWith({
    MoviesListResponse? movies,
  }) =>
      HomeUIState(movies: movies ?? this.movies);
}