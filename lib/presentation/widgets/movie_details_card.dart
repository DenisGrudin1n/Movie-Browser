import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_browser/domain/entities/movie_entity.dart';
import 'package:movie_browser/presentation/providers/favorites_provider.dart';
import 'package:movie_browser/utils/constants.dart';
import 'package:provider/provider.dart';

class MovieDetailsCard extends StatelessWidget {
  const MovieDetailsCard({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Constants.mainLight,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    context.watch<FavoritesProvider>().isFavorite(movie)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: context.watch<FavoritesProvider>().isFavorite(movie)
                        ? Constants.red
                        : Constants.grey,
                    size: 32.r,
                  ),
                  onPressed: () {
                    context.read<FavoritesProvider>().toggleFavorite(movie);
                  },
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              'Release Year: ${movie.releaseDate.split('-')[0]}',
              style: TextStyle(fontSize: 16.sp, color: Colors.grey[400]),
            ),
            SizedBox(height: 16.h),
            Text(
              movie.overview,
              style: TextStyle(
                fontSize: 16.sp,
                color: Constants.mainLight,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
