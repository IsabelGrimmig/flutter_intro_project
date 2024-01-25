import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/models/movie.dart';
import 'movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen(title, {super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieDetailsViewModel>(
      create: (context) => MovieDetailsViewModel(),
      child: Scaffold(
        body: Consumer<MovieDetailsViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              children: [Text(movie.title)],
            );
          },
        ),
      ),
    );
  }
}
