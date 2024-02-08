import '../../domain/models/movie_details.dart';

class FavoritesUIState {
  const FavoritesUIState({
    this.favoriteMovies,
  });
  final MovieDetails? favoriteMovies;

  FavoritesUIState copyWith({
    List<MovieDetails>? favoriteMovies,
  }) =>
      const FavoritesUIState();
}
