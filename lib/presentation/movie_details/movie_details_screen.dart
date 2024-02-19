import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';

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
      builder: (context, viewModel, _) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: 585,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: NetworkImage(
                      '$baseImageUrl${viewModel.state.movieDetails?.posterPath}',

                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
                backgroundColor: const Color(0xFFE9265E),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        viewModel.state.movieDetails?.title ?? '',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'The status of the movie: ${viewModel.state.movieDetails?.status}',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: const Color(0xFFE9265E),
                        ),
                      ),
                      Text(
                        'Original Language:${viewModel.state.movieDetails?.originalLanguage}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFF5252),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Taglines for the movie: ${viewModel.state.movieDetails?.tagline}',
                        style: GoogleFonts.lato(),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Movie overview:',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Text(
                        viewModel.state.movieDetails?.overview ?? '',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      FavoriteButton(
                        onPressedToFa: () async {
                          await viewModel.addToFavorites();
                        },
                      ),

                      //const SizedBox(child: IconButton(onPressed: onPressed, icon: icon),),

                      const SizedBox(
                        height: 48,
                      ),
                      Text(
                        'The Release Date: ${viewModel.state.movieDetails?.releaseDate}',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          color: const Color(0xFFFFA8A0),
                        ),
                      ),
                      Text(
                        'The popularity of ${viewModel.state.movieDetails?.title}: ${viewModel.state.movieDetails?.popularity}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
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
