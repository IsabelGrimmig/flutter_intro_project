import 'package:flutter/material.dart';
import '../../data/sources/movie_api.dart';
import '../../main.dart';
import '../models/movies_list_response.dart';

class GetCrimeMoviesUseCase {
  final MovieApi _api = getIt.get<MovieApi>();
  Future<MoviesListResponse?> call() async{
    try {
      final movies = await _api.getCrimeMovies();
      return movies;
    } catch (error,stackTrace){
      debugPrint(stackTrace.toString());
      return null;
    }
  }
}