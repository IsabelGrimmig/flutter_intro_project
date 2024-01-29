import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/movie_horizontal_list_view.dart';
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
        ),
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              children: <Widget>[
                const Text('Dette er de mest populære film',
                    style: TextStyle(
                      color: Color(0xFFFF5252),
                      fontSize: 18,
                    )),
                MovieHorizontalListView(
                  movies: viewModel.state.popularMovies,
                ),
                const Text('Dette er de film som er mest rated',
                    style: TextStyle(
                      color: Color(0xFFFF5252),
                      fontSize: 18,
                    )),
                MovieHorizontalListView(
                  movies: viewModel.state.topRatedMovies,
                ),
                const Text('Dette er up-coming film',
                    style: TextStyle(
                      color: Color(0xFFFF5252),
                      fontSize: 18,
                    )),
                MovieHorizontalListView(
                  movies: viewModel.state.upcomingMovies,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
