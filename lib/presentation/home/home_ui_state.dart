import '../../domain/models/movie.dart';

class HomeUIState {

  const HomeUIState({this.movies});
  final List<Movie>? movies;

  HomeUIState copyWith({
    List<Movie>? movies,
  }) =>
      HomeUIState(movies: movies ?? this.movies);
}