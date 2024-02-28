import 'dart:async';

import '../../data/repositories/local_storage.dart';
import '../../domain/use cases/get_movie_details_use_case.dart';
import '../../main.dart';
import '../base_view_model.dart';
import 'movie_details_ui_state.dart';

class MovieDetailsViewModel extends BaseViewModel<MovieDetailsUIState> {
  MovieDetailsViewModel({required this.movieId})
      : super(const MovieDetailsUIState()) {
    _initialize();
  }
  final int movieId;

  Future<void> _initialize() async {
    final getMovieDetailsUseCase = GetMovieDetailsUseCase();
    final movieDetails = await getMovieDetailsUseCase.call(movieId: movieId);
    final isMovieLiked = await getIt<LocalStorage>().isMovieLiked(movieId);

    setState(
      state.copyWith(
        movieDetails: movieDetails,
        isMovieLiked: isMovieLiked,
      ),
    );
  }

  Future<void> _addToFavorites() async {
    if (state.movieDetails != null) {
      await getIt<LocalStorage>().addFavorite(movie: state.movieDetails!);
      setState(
        state.copyWith(isMovieLiked: true),
      );
    }
  }

  Future<void> _removeFromFavorites() async {
    if (state.movieDetails != null) {
      await getIt<LocalStorage>()
          .removeFavorite(movieId: state.movieDetails!.id);
      setState(
        state.copyWith(isMovieLiked: false),
      );
    }
  }

  Future<void> handleOnFavoritePressed() async {
    if (state.isMovieLiked) {
      await _removeFromFavorites();
    } else {
      await _addToFavorites();
    }
  }
}
