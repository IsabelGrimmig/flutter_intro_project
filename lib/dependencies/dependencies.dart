import '../data/dio_client.dart';
import '../data/sources/movie_api.dart';
import '../main.dart';

void registerDataDependencies() {
  getIt.registerSingleton(
    MovieApi(DioClient()),
  );
}