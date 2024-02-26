import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../movie_details/movie_details_screen.dart';
import '../widgets/Monta_colors.dart';
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
    final baseImageUrl = dotenv.env['IMAGE_URL'].toString();

    if (viewModel.state.favoriteMovies.isEmpty) {
      return Center(
        child: Text(
          'No favorites yet......',
          style: GoogleFonts.quicksand(
            fontSize: 32,
          ),
        ),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'You have '
            '${viewModel.state.favoriteMovies.length} favorites',
            style: GoogleFonts.quicksand(fontSize: 24),
          ),
        ),
        ...viewModel.state.favoriteMovies.map(
          (movie) => ListTile(
            title: Image(
              image: NetworkImage('$baseImageUrl${movie.posterPath}'),
            ),
            leading: IconButton(
              icon: Icon(
                viewModel.state.favoriteMovies.any((m) => m.id == movie.id)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: MontaColors.coral150,
              ),
              onPressed: () async {
                if (viewModel.state.favoriteMovies
                    .any((m) => m.id == movie.id)) {
                  await viewModel.removeFavorite(movie.id);
                } else {
                  await viewModel.addFavorite(movie);
                }
              },
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title ?? '',
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    color: MontaColors.coral150,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  movie.tagline ?? '',
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Movie popularyty: ${movie.popularity}',
                  style: GoogleFonts.lato(color: MontaColors.coral60),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailsScreen(
                    id: movie.id,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
