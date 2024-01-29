import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/models/movies_list_response.dart';
import '../dio_client.dart';
import 'package:dio/dio.dart';

part '../../generated/data/sources/movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(DioClient dio) {
    final baseUrl = dotenv.env['BASE_URL'].toString();
    final imageUrl = dotenv.env['IMAGE_URL'];
    final fullBaseUrl = '$baseUrl$imageUrl';
    return _MovieApi(dio.dio, baseUrl: fullBaseUrl);
  }

  @GET('/movie/popular')
  Future<MoviesListResponse> getPopularMovie();

  @GET('/movie/top_rated')
  Future<MoviesListResponse> getTopRatedMovies();

  @GET('/movie/upcoming')
  Future<MoviesListResponse> getUpcomingMovies();
}
