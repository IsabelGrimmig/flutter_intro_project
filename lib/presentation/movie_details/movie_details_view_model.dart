import 'dart:async';

import '../../domain/use cases/get_movie_details_use_case.dart';
import '../base_view_model.dart';
import 'movie_details_ui_state.dart';

class MovieDetailsViewModel extends BaseViewModel<MovieDetailsUIState> {
  MovieDetailsViewModel() : super(const MovieDetailsUIState()) {
    unawaited(_initialize());
  }

  Future<void> _initialize() async {
    final getMovieDetailsUseCase = GetMovieDetailsUseCase();
    final movieDetails = await getMovieDetailsUseCase.call();

    setState(
      state.copyWith(
        movieDetails: movieDetails?.results,
      ),
    );
  }
}
