import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/movie_horizontal_list_view.dart';
import '../widgets/trending_slider.dart';
import 'home_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            SizedBox(width: 50, child: SearchButton()),
          ],
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFE9265E),
          foregroundColor: Colors.white,
          title: Text(
            'M O N T A   movies',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
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
                        color: Color(0xFFFF5252),
                        fontSize: 24,
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
                        color: Color(0xFFFF5252),
                        fontSize: 24,
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
                        color: Color(0xFFFF5252),
                        fontSize: 25,
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
