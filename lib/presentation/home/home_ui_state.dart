import '../../domain/models/movie_preview.dart';

class HomeUIState {

  const HomeUIState({this.movies});
  final List<MoviePreview>? movies;

  HomeUIState copyWith({
    List<MoviePreview>? movies,
  }) =>
      HomeUIState(movies: movies ?? this.movies);
}