import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../data/sources/movie_api.dart';
import '../main.dart';

void registerDataDependencies(){
  final Map<String, String> headers = <String, String>{};
  headers.addAll({'accept':'application/json', 'Authorization': 'Bearer ${dotenv.env['ACCESSTOKEN']}'});
   getIt.registerSingleton(MovieApi(
    Dio(
      BaseOptions(
        contentType: 'application/json',
        headers: headers
      )
    )
  ));
}