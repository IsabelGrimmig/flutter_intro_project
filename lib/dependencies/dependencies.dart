import '../data/dio_client.dart';
import '../data/repositories/local_storage.dart';
import '../data/sources/movie_api.dart';
import '../main.dart';

void registerDataDependencies() {
  getIt.registerSingleton(
    MovieApi(DioClient()),
  );
  getIt.registerLazySingleton<LocalStorage>(LocalStorage.new);
}
