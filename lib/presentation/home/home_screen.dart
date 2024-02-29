import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/monta_colors.dart';
import '../widgets/movie_horizontal_list_view.dart';
import '../widgets/trending_slider.dart';
import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            'M O N T A   movies',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Consumer<HomeViewModel>(
            builder: (context, viewModel, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 16),
                    child: Text(
                      'Trending movies',
                      style: TextStyle(
                        color: MontaColors.coral100,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TrendingSlider(
                    movies: viewModel.state.popularMovies,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      'Top rated movies',
                      style: TextStyle(
                        color: MontaColors.coral100,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  MovieHorizontalListView(
                    movies: viewModel.state.topRatedMovies,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      'Up-coming movies',
                      style: TextStyle(
                        color: MontaColors.coral100,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  MovieHorizontalListView(
                    movies: viewModel.state.upcomingMovies,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
