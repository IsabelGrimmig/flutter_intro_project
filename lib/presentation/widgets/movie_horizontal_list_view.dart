import 'package:flutter/material.dart';

import '../../domain/models/movie_preview.dart';
import '../movie_details/movie_details_screen.dart';

class MovieHorizontalListView extends StatelessWidget {
  const MovieHorizontalListView({super.key, this.movies});
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    if (movies != null) {
      return Expanded(
        child: ListView(
          children: [
            ...movies!.map((movie) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MovieDetailsScreen(movie: movies),
                      ),
                    );
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
