import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen(int id, {super.key});

  @override
  Widget build(BuildContext context) {
    String baseImageUrl = dotenv.env['IMAGE_URL'].toString();
    return ChangeNotifierProvider<MovieDetailsViewModel>(
      create: (context) => MovieDetailsViewModel(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
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
                title: const Text('Movie title'),
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
      ),
    );
  }
}
