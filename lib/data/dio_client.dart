import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL'].toString(),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'accept': 'application/json',
        'Authorization': 'Bearer ${dotenv.env['ACCESSTOKEN']}',
      },
    ),
  );
}