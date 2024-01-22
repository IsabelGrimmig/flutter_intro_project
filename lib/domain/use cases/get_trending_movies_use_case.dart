import 'package:flutter/material.dart';

import '../../data/sources/movie_api.dart';
import '../../main.dart';
import '../models/movie_preview.dart';

class GetTrendingMoviesUseCase {
  final MovieApi _api = getIt.get<MovieApi>();
  Future<List<MoviePreview>> call() async{
    try {
      final movies = await _api.getPopularMovie();
      return movies;
    } catch(error){
      debugPrint(error.toString());
      return [];
    }

  }
}