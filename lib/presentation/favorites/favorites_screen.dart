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

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: MontaColors.coral100,
            expandedHeight: 180,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Favorites',
                      style: GoogleFonts.quicksand(fontSize: 32),
                    ),
                  ],
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      MontaColors.coral100,
                      MontaColors.coralBlending,
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (viewModel.state.favoriteMovies.isEmpty)
            SliverFillRemaining(
              child: Center(
                child: Text(
                  'No favorites yet......',
                  style: GoogleFonts.quicksand(
                    fontSize: 32,
                  ),
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final movie = viewModel.state.favoriteMovies[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Image(
                        image: NetworkImage('$baseImageUrl${movie.posterPath}'),
                      ),
                      leading: IconButton(
                        icon: Icon(
                          viewModel.state.favoriteMovies
                                  .any((m) => m.id == movie.id)
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
                              fontWeight: FontWeight.bold,
                              color: MontaColors.coral150,
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
                            'Movie popularity: ${movie.popularity}',
                            style: GoogleFonts.lato(),
                          ),
                          const SizedBox(
                            height: 48,
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
                  );
                },
                childCount: viewModel.state.favoriteMovies.length,
              ),
            ),
        ],
      ),
    );
  }
}
