import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({required this.id, super.key});
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
    return Consumer<MovieDetailsViewModel>(
      builder: (context, viewModel, _) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(viewModel.state.movieDetails?.title ?? ''),
                floating: true,
                pinned: true,
                stretch: true,
                onStretchTrigger: () async {
                  //TODO tilføj requestNewData()
                },
                backgroundColor: const Color(0xFFE9265E),
                expandedHeight: 100,
                flexibleSpace: const FlexibleSpaceBar(
                  stretchModes: [
                    StretchMode.zoomBackground,
                    StretchMode.fadeTitle,
                    StretchMode.blurBackground,
                  ],
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: <Color>[Color(0xFFFF5252), Color(0xFFFF3162)],
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        movieDetails:
                            viewModel.state.movieDetails?.overview ?? '',
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
