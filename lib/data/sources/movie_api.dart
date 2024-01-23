import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/models/movies_list_response.dart';
import '../dio_client.dart';
import 'package:dio/dio.dart';


part '../../generated/data/sources/movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(DioClient dio) {
    final path = dotenv.env['BASE_URL'].toString();
    return _MovieApi(dio.dio, baseUrl: path);
  }

  @GET('/movie/popular')
  Future<MoviesListResponse> getPopularMovie();
  Future<MoviesListResponse> getActionMovies();
  Future<MoviesListResponse>getAnimationMovies();
  Future<MoviesListResponse>getCrimeMovies();
  Future<MoviesListResponse>getFamilyMovies();
  Future<MoviesListResponse>getHorrorMovies();
  Future<MoviesListResponse>getNewMovies();
  Future<MoviesListResponse>getRomanceMovies();
  Future<MoviesListResponse>getWarMovies();

}