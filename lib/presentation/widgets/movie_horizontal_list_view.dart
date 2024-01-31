import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/models/movie_preview.dart';
import '../movie_details/movie_details_screen.dart';

class MovieHorizontalListView extends StatelessWidget {
  const MovieHorizontalListView({this.movies, super.key});
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    String baseImageUrl = dotenv.env['IMAGE_URL'].toString();
    if (movies != null) {
      return Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...movies!.map((movie) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetailsScreen(
                                  movie.id,
                                )));
                    print(movie.id);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image(
                            image: NetworkImage(
                          '$baseImageUrl${movie.posterPath}',
                        )),
                      ),
                      Text(movie.title ?? ''),
                    ],
                  ),
                )),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink(
        child: Text('Kunne ikke indlæse nogen film'),
      );
    }
  }
}
