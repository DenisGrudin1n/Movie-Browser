// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:movie_browser/domain/entities/movie_entity.dart' as _i7;
import 'package:movie_browser/presentation/pages/favorites_page.dart' as _i1;
import 'package:movie_browser/presentation/pages/home_page.dart' as _i2;
import 'package:movie_browser/presentation/pages/movie_details_page.dart'
    as _i3;
import 'package:movie_browser/presentation/pages/movies_page.dart' as _i4;

/// generated route for
/// [_i1.FavoritesPage]
class FavoritesRoute extends _i5.PageRouteInfo<void> {
  const FavoritesRoute({List<_i5.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MovieDetailsPage]
class MovieDetailsRoute extends _i5.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    _i6.Key? key,
    required _i7.MovieEntity movie,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         MovieDetailsRoute.name,
         args: MovieDetailsRouteArgs(key: key, movie: movie),
         initialChildren: children,
       );

  static const String name = 'MovieDetailsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailsRouteArgs>();
      return _i3.MovieDetailsPage(key: args.key, movie: args.movie);
    },
  );
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.movie});

  final _i6.Key? key;

  final _i7.MovieEntity movie;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, movie: $movie}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MovieDetailsRouteArgs) return false;
    return key == other.key && movie == other.movie;
  }

  @override
  int get hashCode => key.hashCode ^ movie.hashCode;
}

/// generated route for
/// [_i4.MoviesPage]
class MoviesRoute extends _i5.PageRouteInfo<void> {
  const MoviesRoute({List<_i5.PageRouteInfo>? children})
    : super(MoviesRoute.name, initialChildren: children);

  static const String name = 'MoviesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.MoviesPage();
    },
  );
}
