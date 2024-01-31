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
      child: _MovieDetailsScreenContent(),
    );
  }
}

class _MovieDetailsScreenContent extends StatelessWidget {
  const _MovieDetailsScreenContent();

  @override
  Widget build(BuildContext context) {
    String baseImageUrl = dotenv.env['IMAGE_URL'].toString();
    return Consumer<MovieDetailsViewModel>(
      builder: (context, viewModel, _) {
        final viewModel2 = viewModel;
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(viewModel.state.movieDetails?.title ?? ''),
                pinned: true,
                stretch: true,
                onStretchTrigger: () async {
                  print('Hent ny data!');
                  //TODO tilføj requestNewData()
                },
                backgroundColor: Color(0xFFE9265E),
                expandedHeight: 100.0,
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
                        colors: <Color>[Color(0xFFFF5252), Colors.transparent],
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child:
                            Text(viewModel.state.movieDetails?.overview ?? ''),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          /*return Consumer<MovieDetailsViewModel>(
            builder: (context, viewModel, _) {
              return Column(
                children: [
                  const Column(
                    children: [
                      Text(
                          'Her fra og ned vil der først være filmbillede og så en beskrivelse og til sidst en rating info'),
                    ],
                  ),
                  MovieHorizontalListView(
                    movies: viewModel.state.popularMovies,
                  )
                ],
              );
            },*/
        );
      },
    );
  }
}
