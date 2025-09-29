import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/movie_card.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Movie Browser', style: TextStyle(fontSize: 20.sp)),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: 5, // Placeholder count
          itemBuilder: (context, index, realIndex) {
            return MovieCard(
              onTap: () {
                // Navigate to details
              },
              onFavoriteTap: () {
                // Toggle favorite
              },
              isFavorite: false,
            );
          },
          options: CarouselOptions(
            height: 450.h,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.66,
            enlargeFactor: 0.3,
            padEnds: true,
          ),
        ),
      ),
    );
  }
}
