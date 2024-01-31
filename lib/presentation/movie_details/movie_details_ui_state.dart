import '../../domain/models/movie_details.dart';

class MovieDetailsUIState {
  const MovieDetailsUIState({
    this.movieDetails,
  });
  final MovieDetails? movieDetails;

  MovieDetailsUIState copyWith({
    MovieDetails? movieDetails,
  }) =>
      MovieDetailsUIState(
        movieDetails: movieDetails ?? this.movieDetails,
      );
}
