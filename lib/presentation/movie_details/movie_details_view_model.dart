import 'dart:async';

import '../../data/repositories/local_storage.dart';
import '../../domain/use cases/get_movie_details_use_case.dart';
import '../../main.dart';
import '../base_view_model.dart';
import 'movie_details_ui_state.dart';

class MovieDetailsViewModel extends BaseViewModel<MovieDetailsUIState> {
  MovieDetailsViewModel({required this.movieId})
      : super(const MovieDetailsUIState()) {
    unawaited(_initialize());
  }
  final int movieId;

  Future<void> _initialize() async {
    final getMovieDetailsUseCase = GetMovieDetailsUseCase();
    final movieDetails = await getMovieDetailsUseCase.call(movieId: movieId);

    setState(
      state.copyWith(
        movieDetails: movieDetails,
      ),
    );
  }

  Future<void> addToFavorites() async {
    if (state.movieDetails != null) {
      await getIt<LocalStorage>().addFavorite(movie: state.movieDetails!);
    }
  }

  Future<void> removeFromFavorites() async {
    if (state.movieDetails != null) {
      await getIt<LocalStorage>()
          .removeFavorites(movieId: state.movieDetails!.id);
    }
  }

  Future<bool> isFavorite(int movieId) async {
    final favorites = await getIt<LocalStorage>().getFavorites();
    return favorites.any((movie) => movie.id == movieId);
  }
}
