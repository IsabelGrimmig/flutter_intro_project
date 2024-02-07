import 'package:flutter/material.dart';

import '../../domain/models/movie_details.dart';

class FavoritesViewModel extends ChangeNotifier {
  List<MovieDetails> _favoriteMovies = [];

  List<MovieDetails> get favoriteMovies => _favoriteMovies;

  void toggleFavorite(MovieDetails movie) {
    if (_favoriteMovies.contains(movie)) {
      _favoriteMovies.remove(movie);
    } else {
      _favoriteMovies.add(movie);
    }
    notifyListeners();
  }
}
