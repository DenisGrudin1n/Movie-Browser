// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:movie_browser/domain/entities/movie_entity.dart' as _i6;
import 'package:movie_browser/presentation/pages/favorites_page.dart' as _i1;
import 'package:movie_browser/presentation/pages/movies_details_page.dart'
    as _i2;
import 'package:movie_browser/presentation/pages/movies_page.dart' as _i3;

/// generated route for
/// [_i1.FavoritesPage]
class FavoritesRoute extends _i4.PageRouteInfo<void> {
  const FavoritesRoute({List<_i4.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i2.MoviesDetailsPage]
class MoviesDetailsRoute extends _i4.PageRouteInfo<MoviesDetailsRouteArgs> {
  MoviesDetailsRoute({
    _i5.Key? key,
    required _i6.MovieEntity movie,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         MoviesDetailsRoute.name,
         args: MoviesDetailsRouteArgs(key: key, movie: movie),
         initialChildren: children,
       );

  static const String name = 'MoviesDetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MoviesDetailsRouteArgs>();
      return _i2.MoviesDetailsPage(key: args.key, movie: args.movie);
    },
  );
}

class MoviesDetailsRouteArgs {
  const MoviesDetailsRouteArgs({this.key, required this.movie});

  final _i5.Key? key;

  final _i6.MovieEntity movie;

  @override
  String toString() {
    return 'MoviesDetailsRouteArgs{key: $key, movie: $movie}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MoviesDetailsRouteArgs) return false;
    return key == other.key && movie == other.movie;
  }

  @override
  int get hashCode => key.hashCode ^ movie.hashCode;
}

/// generated route for
/// [_i3.MoviesPage]
class MoviesRoute extends _i4.PageRouteInfo<void> {
  const MoviesRoute({List<_i4.PageRouteInfo>? children})
    : super(MoviesRoute.name, initialChildren: children);

  static const String name = 'MoviesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.MoviesPage();
    },
  );
}
