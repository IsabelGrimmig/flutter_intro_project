import '../../domain/models/movie_details.dart';

class MovieDetailsUIState {
  const MovieDetailsUIState({
    this.movieDetails,
  });
  final MovieDetails? movieDetails;

  get addToFavorites => null;

  MovieDetailsUIState copyWith({
    MovieDetails? movieDetails,
  }) =>
      MovieDetailsUIState(
        movieDetails: movieDetails ?? this.movieDetails,
      );
}
