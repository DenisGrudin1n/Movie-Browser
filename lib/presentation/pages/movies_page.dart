import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';
import 'package:provider/provider.dart';

import '../widgets/movie_card.dart';
import '../providers/movies_provider.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<MoviesProvider>().getMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (provider.movies.isEmpty) {
          return const Center(child: Text('No movies found'));
        }

        return Center(
          child: CarouselSlider.builder(
            itemCount: provider.movies.length,
            itemBuilder: (context, index, realIndex) {
              final movie = provider.movies[index];
              return MovieCard(
                onTap: () {
                  context.router.push(MovieDetailsRoute(movie: movie));
                },
                movie: movie,
              );
            },
            options: CarouselOptions(
              height: 450.h,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              viewportFraction: 0.6,
              enlargeFactor: 0.3,
              padEnds: true,
            ),
          ),
        );
      },
    );
  }
}
