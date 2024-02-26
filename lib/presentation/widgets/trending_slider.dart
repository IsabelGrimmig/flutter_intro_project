import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/models/movie_preview.dart';
import '../movie_details/movie_details_screen.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({
    super.key,
    this.movies,
  });
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    final baseImageUrl = dotenv.env['IMAGE_URL'] ?? 'defaultFallbackImageUrl';

    return SizedBox(
      width: double.infinity,
      child: movies != null && movies!.isNotEmpty
          ? CarouselSlider.builder(
              itemCount: movies?.length ?? 0,
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                viewportFraction: 0.55,
                enlargeCenterPage: true,
                pageSnapping: true,
                autoPlayAnimationDuration: const Duration(seconds: 3),
              ),
              itemBuilder: (
                context,
                itemIndex,
                pageViewIndex,
              ) {
                final movie = movies![itemIndex];

                return GestureDetector(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      '$baseImageUrl${movie.posterPath}',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                'There are no trending movies',
                style: GoogleFonts.lato(),
              ),
            ),
    );
  }
}
