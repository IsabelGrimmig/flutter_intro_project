import '../../domain/models/movie_details.dart';

class MovieDetailsUIState {
  const MovieDetailsUIState({
    this.movieDetails,
  });
  final List<MovieDetails>? movieDetails;

  MovieDetailsUIState copyWith({
    List<MovieDetails>? movieDetails,
  }) =>
      MovieDetailsUIState(
        movieDetails: movieDetails ?? this.movieDetails,
      );
}
