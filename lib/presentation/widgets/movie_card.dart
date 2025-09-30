import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_browser/domain/entities/movie_entity.dart';
import 'package:movie_browser/presentation/providers/favorites_provider.dart';
import 'package:movie_browser/utils/constants.dart';
import 'package:provider/provider.dart';

class MovieCard extends StatelessWidget {
  final VoidCallback onTap;
  final MovieEntity movie;

  const MovieCard({super.key, required this.onTap, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300.w,
        margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
              child: movie.posterPath.isNotEmpty
                  ? Image.network(
                      '${Constants.tmdbPosterImageBaseEndpoint}${movie.posterPath}',
                      height: 200.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  // Placeholder for missing image
                  : Container(
                      height: 200.h,
                      color: Colors.grey[300],
                      child: Center(
                        child: Icon(
                          Icons.movie,
                          size: 50.r,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12.r),
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
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            context.watch<FavoritesProvider>().isFavorite(movie)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                context.watch<FavoritesProvider>().isFavorite(
                                  movie,
                                )
                                ? Colors.red
                                : Colors.grey,
                            size: 24.r,
                          ),
                          onPressed: () {
                            context.read<FavoritesProvider>().toggleFavorite(
                              movie,
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Expanded(
                      child: Text(
                        movie.overview,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
