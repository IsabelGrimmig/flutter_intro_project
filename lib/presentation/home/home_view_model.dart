import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/models/movie.dart';
import '../base_view_model.dart';
import '../root_screen.dart';
import 'home_ui_state.dart';


class HomeViewModel extends BaseViewModel<HomeUIState> {
  HomeViewModel():super(const HomeUIState()){
    setState(state.copyWith(movies: [Movie(title: 'Mandag'), Movie(title: 'Tirsdag'), Movie(title: 'Onsdag'), Movie(title: 'Torsdag'), Movie(title: 'Fredag')]));
  }
//add movies metode til mit ui

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
