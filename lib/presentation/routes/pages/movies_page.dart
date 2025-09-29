import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.router.push(MoviesDetailsRoute()),
          child: Text('Movies Page'),
        ),
      ),
    );
  }
}
