import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_browser/domain/entities/movie_entity.dart';
import 'package:movie_browser/presentation/widgets/movie_details_appbar.dart';
import 'package:movie_browser/presentation/widgets/movie_details_card.dart';
import 'package:movie_browser/utils/constants.dart';

@RoutePage()
class MovieDetailsPage extends StatelessWidget {
  final MovieEntity movie;

  const MovieDetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundDark,
      body: CustomScrollView(
        slivers: [
          MovieDetailsAppBar(movie: movie),
          MovieDetailsCard(movie: movie),
        ],
      ),
    );
  }
}
