import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/models/movie_preview.dart';

part '../../generated/data/sources/movie_api.g.dart';
@RestApi()
abstract class MovieApi {
  factory MovieApi(Dio dio) {
    String path = dotenv.env['BASE_URL'].toString();
    return _MovieApi(dio, baseUrl: path);
  }

  @GET('/movie/popular')
  Future<List<MoviePreview>> getPopularMovie();
  
}