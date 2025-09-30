import 'package:flutter/material.dart';
import 'dart:convert';
import '../../data/services/storage_service.dart';
import '../../domain/entities/movie_entity.dart';

class FavoritesProvider extends ChangeNotifier {
  final StorageService _storageService;
  final List<MovieEntity> _favorites = [];

  FavoritesProvider(this._storageService) {
    _loadFavorites();
  }

  List<MovieEntity> get favorites => _favorites;

  bool isFavorite(MovieEntity movie) => _favorites.any((m) => m.id == movie.id);

  Future<void> _loadFavorites() async {
    try {
      final favoritesJson = await _storageService.getFavorites();
      if (favoritesJson.isEmpty) return;

      final List<dynamic> favoritesList = json.decode(favoritesJson);
      _favorites.addAll(
        favoritesList.map(
          (json) => MovieEntity(
            id: json['id'],
            title: json['title'],
            overview: json['overview'],
            posterPath: json['posterPath'],
            releaseDate: json['releaseDate'],
          ),
        ),
      );
      notifyListeners();
    } catch (e) {
      // Handle error if needed
    }
  }

  void toggleFavorite(MovieEntity movie) {
    final isExist = _favorites.any((m) => m.id == movie.id);
    if (isExist) {
      _favorites.removeWhere((m) => m.id == movie.id);
    } else {
      _favorites.add(movie);
    }
    _saveFavorites();
    notifyListeners();
  }

  Future<void> _saveFavorites() async {
    final favoritesJson = json.encode(
      _favorites
          .map(
            (movie) => {
              'id': movie.id,
              'title': movie.title,
              'overview': movie.overview,
              'posterPath': movie.posterPath,
              'releaseDate': movie.releaseDate,
            },
          )
          .toList(),
    );

    await _storageService.saveFavorites(favoritesJson);
  }
}
