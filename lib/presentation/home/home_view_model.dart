import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../bottom_navigation_bar.dart';


class HomeViewModel extends ChangeNotifier {
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
    return const BottomNavigationBarWidget();

  }
}
