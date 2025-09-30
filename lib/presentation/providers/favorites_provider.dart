import 'package:flutter/material.dart';
import '../../domain/entities/movie_entity.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<MovieEntity> _favorites = [];

  List<MovieEntity> get favorites => _favorites;

  bool isFavorite(MovieEntity movie) => _favorites.any((m) => m.id == movie.id);

  void toggleFavorite(MovieEntity movie) {
    final isExist = _favorites.any((m) => m.id == movie.id);
    if (isExist) {
      _favorites.removeWhere((m) => m.id == movie.id);
    } else {
      _favorites.add(movie);
    }
    notifyListeners();
  }
}
