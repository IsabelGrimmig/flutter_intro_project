import '../../data/repositories/local_storage.dart';
import '../../domain/models/movie_details.dart';
import '../../main.dart';
import '../base_view_model.dart';
import 'favorites_ui_state.dart';

class FavoriteViewModel extends BaseViewModel<FavoritesUIState> {
  FavoriteViewModel() : super(const FavoritesUIState()) {
    _init();
  }
  Future<void> _init() async {
    final favorites = await getIt<LocalStorage>().getFavorites();

    setState(state.copyWith(favoriteMovies: favorites));
  }

  Future<void> addFavorite(MovieDetails movieDetails) async {
    await getIt<LocalStorage>().addFavorite(movie: movieDetails);
  }

  Future<void> removeFavorite(int movieId) async {
    await getIt<LocalStorage>().removeFavorite(movieId: movieId);
    final updatedFavorites = await getIt<LocalStorage>().getFavorites();
    setState(
      state.copyWith(favoriteMovies: updatedFavorites),
    );
  }
}
