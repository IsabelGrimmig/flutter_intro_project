import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/models/movie_details.dart';
import '../../domain/models/movies_list_response.dart';
import '../dio_client.dart';
import 'package:dio/dio.dart';

part '../../generated/data/sources/movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(DioClient dio) {
    final baseUrl = dotenv.env['BASE_URL'].toString();

    return _MovieApi(dio.dio, baseUrl: baseUrl);
  }

  @GET('/movie/popular')
  Future<MoviesListResponse> getPopularMovie();

  @GET('/movie/top_rated')
  Future<MoviesListResponse> getTopRatedMovies();

  @GET('/movie/upcoming')
  Future<MoviesListResponse> getUpcomingMovies();

  @GET('/movie/{movie_id}')
  Future<MovieDetails> getMovieDetails(
      {@Path('movie_id') required int movieId});
}
