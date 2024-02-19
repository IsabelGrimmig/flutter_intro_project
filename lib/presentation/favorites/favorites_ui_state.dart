import '../../domain/models/movie_details.dart';

class FavoritesUIState {
  const FavoritesUIState({
    this.favoriteMovies = const [],
  });
  final List<MovieDetails> favoriteMovies;

  FavoritesUIState copyWith({
    List<MovieDetails>? favoriteMovies,
  }) =>
      FavoritesUIState(favoriteMovies: favoriteMovies ?? this.favoriteMovies);
}
