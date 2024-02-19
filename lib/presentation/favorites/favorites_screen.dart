import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favorites_view_model.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoriteViewModel>(
      create: (context) => FavoriteViewModel(),
      child: const _FavoritesScreenContent(),
    );
  }
}

class _FavoritesScreenContent extends StatelessWidget {
  const _FavoritesScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<FavoriteViewModel>();

    if (viewModel.state.favoriteMovies.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${viewModel.state.favoriteMovies.length} favorites:'),
        ),
        ...viewModel.state.favoriteMovies.map(
          (movie) => ListTile(
            leading: const Icon(Icons.favorite),
            title: Text(movie.title ?? ''),
          ),
        )
      ],
    );
  }
}
