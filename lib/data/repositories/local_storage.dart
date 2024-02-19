import 'dart:convert';
import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/models/favorites.dart';
import '../../domain/models/movie_details.dart';

class LocalStorage {
  LocalStorage();
  final String prefsFavorites = 'intro-project-favorites';
  final Favorites _favorites = const Favorites();

  final Future<SharedPreferences> sharedPrefInstance =
      SharedPreferences.getInstance();

  Future<void> initialize() async {
    String savedFavorites = await getString(prefsFavorites);
    if (savedFavorites.isEmpty) {
      await setString(
          key: prefsFavorites, value: json.encode(_favorites.toJson()));
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
    String faves = await getString(prefsFavorites);
    print(faves);
    Favorites favorites = Favorites.fromJson(json.decode(faves));
    favorites.favorites.add(movie);
    await setString(
        key: prefsFavorites, value: json.encode(favorites.toJson()));
  }

  Future<Favorites> getFavorites() async {
    String faves = await getString(prefsFavorites);
    Favorites favorites = Favorites.fromJson(json.decode(faves));
    return favorites;
  }
}
