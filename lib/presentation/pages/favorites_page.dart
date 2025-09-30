import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_browser/presentation/providers/favorites_provider.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';
import 'package:movie_browser/presentation/widgets/favorite_movie_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Consumer<FavoritesProvider>(
        builder: (context, provider, child) {
          if (provider.favorites.isEmpty) {
            return Center(
              child: Text(
                'No favorite movies yet',
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            itemCount: provider.favorites.length,
            itemBuilder: (context, index) {
              final movie = provider.favorites[index];
              return FavoriteMovieCard(
                movie: movie,
                provider: provider,
                onTap: () {
                  context.router.push(MovieDetailsRoute(movie: movie));
                },
              );
            },
          );
        },
      ),
    );
  }
}
