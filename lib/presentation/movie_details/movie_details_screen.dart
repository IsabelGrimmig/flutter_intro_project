import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import '../../domain/models/movie_details.dart';
import '../favorites/favorites_screen.dart';
import '../favorites/favorites_view_model.dart';
import '../widgets/button.dart';
import 'movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    required this.id,
    super.key,
  });
  final int id;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieDetailsViewModel>(
      create: (context) => MovieDetailsViewModel(movieId: id),
      child: const _MovieDetailsScreenContent(),
    );
  }
}

class _MovieDetailsScreenContent extends StatelessWidget {
  const _MovieDetailsScreenContent();

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieDetailsViewModel>(
      builder: (context, viewModel, _) {
        final favoritesViewModel =
            Provider.of<FavoritesViewModel>(context, listen: false);

        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(viewModel.state.movieDetails?.title ?? ''),
                floating: false,
                pinned: true,
                stretch: true,
                onStretchTrigger: () async {
                  //TODO tilføj requestNewData()
                },
                expandedHeight: 200,
                flexibleSpace: const FlexibleSpaceBar(
                  stretchModes: [
                    StretchMode.zoomBackground,
                    StretchMode.fadeTitle,
                    StretchMode.blurBackground,
                  ],
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: <Color>[Color(0xFFFF5252), Color(0xFFFF3162)],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Original Language:${viewModel.state.movieDetails!.originalLanguage}',
                        style: const TextStyle(
                            fontSize: 11, color: Color(0xFFFF5252)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Movie overview',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        viewModel.state.movieDetails?.overview ?? '',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      LikeButton(
                          icon: Icons.favorite,
                          onPressed: () {
                            favoritesViewModel
                                .toggleFavorite(viewModel.state.movieDetails!);
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
