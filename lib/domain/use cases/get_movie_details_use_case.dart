import 'package:flutter/material.dart';

import '../../data/sources/movie_api.dart';
import '../../main.dart';
import '../models/movie_details.dart';
import '../models/movies_list_response.dart';

final class GetMovieDetailsUseCase {
  final MovieApi _api = getIt<MovieApi>();
  Future<MovieDetails?> call({required int movieId}) async {
    try {
      final movie = await _api.getMovieDetails(movieId: movieId);
      return movie;
    } catch (error, stackTrace) {
      debugPrint(stackTrace.toString());
      return null;
    }
  }
}
