import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/models/movie_preview.dart';
import '../movie_details/movie_details_screen.dart';

class MovieHorizontalListView extends StatelessWidget {
  const MovieHorizontalListView({this.movies, super.key});
  final List<MoviePreview>? movies;

  @override
  Widget build(BuildContext context) {
    final baseImageUrl = dotenv.env['IMAGE_URL'].toString();
    if (movies != null) {
      return SizedBox(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            ...movies!.map((movie) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetailsScreen(
                                  id: movie.id,
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
                      SizedBox(
                        width: 150,
                        child: Text(
                          movie.title ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
