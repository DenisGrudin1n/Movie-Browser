import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_browser/domain/entities/movie_entity.dart';
import 'package:movie_browser/utils/constants.dart';

class MovieDetailsAppBar extends StatelessWidget {
  const MovieDetailsAppBar({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 500.h,
      pinned: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 32.r,
            color: Constants.amber,
          ),
          onPressed: () => context.router.back(),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: movie.posterPath.isNotEmpty
            ? Image.network(
                '${Constants.tmdbPosterImageBaseEndpoint}${movie.posterPath}',
                fit: BoxFit.fill,
              )
            : Container(
                color: Colors.grey[800],
                child: Icon(Icons.movie, size: 100.r, color: Colors.grey[600]),
              ),
      ),
    );
  }
}
