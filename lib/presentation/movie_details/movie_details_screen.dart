import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/models/movie_Image.dart';
import 'movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen(title, {super.key, required this.movieImage});
  final MovieImage movieImage;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieDetailsViewModel>(
      create: (context) => MovieDetailsViewModel(),
      child: Scaffold(
        body: Consumer<MovieDetailsViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              children: [Text(movieImage.toString())],
            );
          },
        ),
      ),
    );
  }
}
