import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favorites_view_model.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesViewModel = Provider.of<FavoritesViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('Favorites'),
        backgroundColor: const Color(0xFFFFA8A0),
      ),
      body: ListView.builder(
        itemCount: favoritesViewModel.favoriteMovies.length,
        itemBuilder: (context, index) {
          final movie = favoritesViewModel.favoriteMovies[index];
          return ListTile(
            title: Text(movie.title ?? ''),
          );
        },
      ),
    );
  }
}
