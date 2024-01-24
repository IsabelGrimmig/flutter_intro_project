import 'package:flutter/material.dart';

import '../../domain/models/movie_preview.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, this.movies});
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    if (movies != null) {
              return ListView(
                children: [
                  ...movies!
                      .map((movies) => Text(movies.title ?? '')),
                ],
                scrollDirection: Axis.horizontal,
                
                
              );
            } else {
              return const SizedBox.shrink();
            }
  }
}