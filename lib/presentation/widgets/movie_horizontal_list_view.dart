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
          physics: const BouncingScrollPhysics(),
          children: [
            ...movies!.map(
              (movie) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(
                        id: movie.id,
                      ),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  child: Image(
                    image: NetworkImage(
                      '$baseImageUrl${movie.posterPath}',
                    ),
                    width: 120,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
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
