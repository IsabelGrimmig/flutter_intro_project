import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/models/favorites.dart';
import '../../domain/models/movie_details.dart';

class LocalStorage {
  LocalStorage();
  final String prefsFavorites = 'intro-project-favorites';

  final Future<SharedPreferences> sharedPrefInstance =
      SharedPreferences.getInstance();

  Future<void> initialize() async {
    final savedFavorites = await getString(prefsFavorites);
    if (savedFavorites.isEmpty) {
      await setString(
        key: prefsFavorites,
        value: json.encode(
          Favorites().toJson(),
        ),
      );
    }
  }

  /// Clearing all key values
  Future<void> clear() => sharedPrefInstance.then((prefs) => prefs.clear());

  /// Removing value by a specific [key]
  Future<void> remove(String key) =>
      sharedPrefInstance.then((prefs) => prefs.remove(key));

  /// Returning all shared preference keys
  Future<Set<String>> getAllKeys() =>
      sharedPrefInstance.then((prefs) => prefs.getKeys());

  /// Returns [String] value by a specific [key]
  ///
  /// [defValue] will be returned, if value is null or key wasn't created yet
  Future<String> getString(
    String key, [
    String defValue = '',
  ]) =>
      sharedPrefInstance.then((prefs) => prefs.getString(key) ?? defValue);

  /// Storing [String] value by a specific [key]
  Future<void> setString({
    required String key,
    required String value,
  }) =>
      sharedPrefInstance.then((prefs) => prefs.setString(key, value));

  Future<void> addFavorite({
    required MovieDetails movie,
  }) async {
    final faves = await getString(prefsFavorites);
    final favoritesWrapper = Favorites.fromJson(json.decode(faves));
    for (var favorite in favoritesWrapper.favorites) {
      if (favorite.id == movie.id) {
        return;
      }
    }
    favoritesWrapper.favorites.add(movie);
    await setString(
        key: prefsFavorites, value: json.encode(favoritesWrapper.toJson()));
  }

  Future<List<MovieDetails>> getFavorites() async {
    final faves = await getString(prefsFavorites);
    final favoritesWrapper = Favorites.fromJson(json.decode(faves));

    return favoritesWrapper.favorites;
  }

  Future<List<MovieDetails>> removeFavorites({
    required int movieId,
  }) async {
    final faves = await getFavorites();
    faves.removeWhere((movie) => movie.id == movieId);
    await setString(
      key: prefsFavorites,
      value: json.encode(Favorites(favorites: faves).toJson()),
    );

    return getFavorites();
  }
}
