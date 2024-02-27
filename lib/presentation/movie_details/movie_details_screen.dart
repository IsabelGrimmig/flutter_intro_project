import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/Monta_colors.dart';
import '../widgets/favorite_button.dart';
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
    final baseImageUrl = dotenv.env['IMAGE_URL'].toString();

    return Consumer<MovieDetailsViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: 586,
                flexibleSpace: FlexibleSpaceBar(
                  background: viewModel.state.movieDetails?.posterPath != null
                      ? Image.network(
                          '$baseImageUrl${viewModel.state.movieDetails?.posterPath}',
                          fit: BoxFit.cover,
                        )
                      : Center(
                          child: Text(
                            'M O N T A movies',
                            style: GoogleFonts.quicksand(
                              color: MontaColors.sand10,
                              fontSize: 24,
                            ),
                          ),
                        ),
                ),
                backgroundColor: MontaColors.coral150,
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'The Status af the movie: ${viewModel.state.movieDetails?.status} ${viewModel.state.movieDetails?.releaseDate}',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          color: MontaColors.coral60,
                        ),
                      ),
                    ),
                    FavoriteButton(
                      isMovieLiked: viewModel.state.isMovieLiked,
                      onPressedToAdd: () async {
                        await viewModel.addToFavorites();
                      },
                      onPressedToRemove: () async {
                        await viewModel.removeFromFavorites();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        viewModel.state.movieDetails?.title ?? '',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        viewModel.state.movieDetails?.overview ?? '',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Original Language:${viewModel.state.movieDetails?.originalLanguage}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: MontaColors.coral100,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'The runtime of ${viewModel.state.movieDetails?.title} is ${viewModel.state.movieDetails?.runtime}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: MontaColors.coral100,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Popularity of ${viewModel.state.movieDetails?.title}: ${viewModel.state.movieDetails?.popularity}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'The vote average: ${viewModel.state.movieDetails?.voteAverage}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
