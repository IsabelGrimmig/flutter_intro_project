import 'package:flutter/material.dart';
import '../../domain/use cases/get_action_movies_use_case.dart';
import '../../domain/use cases/get_trending_movies_use_case.dart';
import '../base_view_model.dart';
import '../root_screen.dart';
import 'home_ui_state.dart';


class HomeViewModel extends BaseViewModel<HomeUIState> {
  HomeViewModel():super(const HomeUIState()){
    initialize();
  }

Future<void> initialize() async {
  final getTrendingMoviesUseCase = GetTrendingMoviesUseCase();
  final popularMovies =  await getTrendingMoviesUseCase.call();

  final getActionMoviesUseCase = GetActionMoviesUseCase();
  final actionMovies = await getActionMoviesUseCase.call();

  setState(state.copyWith(popularMovies: popularMovies, actionMovies: actionMovies));

}

  Widget buildBottomNavigationBar(BuildContext context){
    return const RootScreen();

  }
}
