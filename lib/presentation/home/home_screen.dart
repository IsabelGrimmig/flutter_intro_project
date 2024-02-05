import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/movie_horizontal_list_view.dart';
import '../widgets/movie_slider.dart';
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
          actions: const [
            SizedBox(width: 50, child: SearchButton()),
          ],
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFE9265E),
          foregroundColor: Colors.white,
          title: const Text('M O N T A   movies'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Consumer<HomeViewModel>(
            builder: (context, viewModel, _) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Trending movies',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(height: 20),
                    const TrendingSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.popularMovies,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Top rated movies',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.topRatedMovies,
                    ),
                    const Text('Up-coming movies',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.upcomingMovies,
                    ),
                    const Text('Dette er en test',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.upcomingMovies,
                    ),
                    const Text('test',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.upcomingMovies,
                    ),
                    const Text('Tester',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.upcomingMovies,
                    ),
                    const Text('Tester2',
                        style: TextStyle(
                          color: Color(0xFFFF5252),
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const MovieSlider(),
                    MovieHorizontalListView(
                      movies: viewModel.state.upcomingMovies,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
