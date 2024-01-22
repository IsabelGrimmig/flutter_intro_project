import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import '../../domain/use cases/get_trending_movies_use_case.dart';
import '../base_view_model.dart';
import '../root_screen.dart';
import 'home_ui_state.dart';


class HomeViewModel extends BaseViewModel<HomeUIState> {
  HomeViewModel():super(const HomeUIState()){
    initialize();
  }
//add movies metode til mit ui

Future<void> initialize() async {
  final getTrendingMoviesUseCase = GetTrendingMoviesUseCase();
  final popularMovies =  await getTrendingMoviesUseCase.call();
  print(popularMovies);
  setState(state.copyWith(movies: popularMovies));
}
  WordPair current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  List<WordPair> favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
  Widget buildBottomNavigationBar(BuildContext context){
    return const RootScreen();

  }
}
