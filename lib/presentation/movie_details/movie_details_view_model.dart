import '../base_view_model.dart';
import 'movie_details_ui_state.dart';

class MovieDetailsViewModel extends BaseViewModel<MovieDetailsUIState> {
  MovieDetailsViewModel() : super(const MovieDetailsUIState()) {
    initialize();
  }

  Future<void> initialize() async {}
}
