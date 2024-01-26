import 'dart:async';

import '../../domain/use cases/get_top_rated_movies_use_case.dart';
import '../../domain/use cases/get_trending_movies_use_case.dart';
import '../../domain/use cases/get_upcoming_movies_use_case.dart';
import '../base_view_model.dart';
import 'home_ui_state.dart';

class HomeViewModel extends BaseViewModel<HomeUIState> {
  HomeViewModel() : super(const HomeUIState()) {
    unawaited(_initialize());
  }

  Future<void> _initialize() async {
    final getTrendingMoviesUseCase = GetTrendingMoviesUseCase();
    final popularMovies = await getTrendingMoviesUseCase.call();

    final getTopRatedMoviesUseCase = GetTopRatedMoviesUseCase();
    final topRatedMovies = await getTopRatedMoviesUseCase.call();

    final getUpcomingMoviesUseCase = GetUpcomingMoviesUseCase();
    final upcomingMovies = await getUpcomingMoviesUseCase.call();

    setState(
      state.copyWith(
        popularMovies: popularMovies?.results,
        topRatedMovies: topRatedMovies?.results,
        upcomingMovies: upcomingMovies?.results,
      ),
    );
  }
}
