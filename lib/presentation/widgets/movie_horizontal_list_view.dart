import 'package:flutter/material.dart';

import '../../domain/models/movie_image.dart';
import '../../domain/models/movie_preview.dart';

class MovieHorizontalListView extends StatelessWidget {
  const MovieHorizontalListView(
    List<MoviePreview>? movies, {
    super.key,
    this.movies,
    this.moviesImage,
  });
  final List<MoviePreview>? movies;
  final List<MovieImage>? moviesImage;

  @override
  Widget build(BuildContext context) {
    if (movies != null) {
      return Expanded(
        child: ListView(
          children: [
            ...movies!.map((movie) => GestureDetector(
                  onTap: () {
                    print(movie.id);
                  },
                  child: Text(movie.title ?? ''),
                )),
          ],
          scrollDirection: Axis.horizontal,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
