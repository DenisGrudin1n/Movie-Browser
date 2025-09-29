import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';

@RoutePage()
class MoviesDetailsPage extends StatelessWidget {
  const MoviesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.router.push(FavoritesRoute()),
          child: Text('Movies Details Page'),
        ),
      ),
    );
  }
}
