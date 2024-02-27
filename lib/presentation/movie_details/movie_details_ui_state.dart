import '../../domain/models/movie_details.dart';

class MovieDetailsUIState {
  const MovieDetailsUIState({
    this.movieDetails,
    this.isMovieLiked = false,
  });
  final MovieDetails? movieDetails;
  final bool isMovieLiked;

  MovieDetailsUIState copyWith({
    MovieDetails? movieDetails,
    bool? isMovieLiked,
  }) =>
      MovieDetailsUIState(
        movieDetails: movieDetails ?? this.movieDetails,
        isMovieLiked: isMovieLiked ?? this.isMovieLiked,
      );
}
