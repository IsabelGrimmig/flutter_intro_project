import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/models/movie_preview.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({
    super.key,
    this.movies,
  });
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: movies?.length ?? 0,
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          viewportFraction: 0.55,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlayAnimationDuration: const Duration(seconds: 2),
        ),
        itemBuilder: (
          context,
          itemIndex,
          pageViewIndex,
        ) {
          var movie = movies![itemIndex];
          var baseImageUrl = dotenv.env['IMAGE_URL'].toString();
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              '$baseImageUrl${movie.posterPath}',
              height: 300,
              width: 200,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
