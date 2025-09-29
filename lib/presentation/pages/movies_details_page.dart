import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/movie_entity.dart';
import '../../utils/constants.dart';

@RoutePage()
class MoviesDetailsPage extends StatelessWidget {
  final MovieEntity movie;

  const MoviesDetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400.h,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: movie.posterPath.isNotEmpty
                  ? Image.network(
                      '${Constants.tmdbPosterImageBaseEndpoint}${movie.posterPath}',
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: Colors.grey[800],
                      child: Icon(
                        Icons.movie,
                        size: 100.r,
                        color: Colors.grey[600],
                      ),
                    ),
            ),
          ),
          SliverToBoxAdapter(
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
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          movie.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: movie.isFavorite ? Colors.red : Colors.grey,
                          size: 32.r,
                        ),
                        onPressed: () {
                          // Toggle favorite functionality will be added later
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
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
