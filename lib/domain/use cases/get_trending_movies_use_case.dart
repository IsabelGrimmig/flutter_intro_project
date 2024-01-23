import 'package:flutter/material.dart';
import '../../data/sources/movie_api.dart';
import '../../main.dart';
import '../models/movies_list_response.dart';

class GetTrendingMoviesUseCase {
  final MovieApi _api = getIt.get<MovieApi>();
  Future<MoviesListResponse?> call() async {
    try {
      final movies = await _api.getPopularMovie();
      return movies;
    } catch (error, stackTrace) {
      debugPrint(stackTrace.toString());
      return null;
    }
  }
}