import 'package:flutter/material.dart';
import '../../domain/entities/movie_entity.dart';
import '../../domain/usecases/get_movies_usecase.dart';

class MoviesProvider extends ChangeNotifier {
  final GetMoviesUseCase _getMoviesUseCase;
  List<MovieEntity> _movies = [];
  bool _isLoading = false;

  MoviesProvider(this._getMoviesUseCase);

  List<MovieEntity> get movies => _movies;
  bool get isLoading => _isLoading;

  Future<void> getMovies() async {
    _isLoading = true;
    notifyListeners();

    try {
      _movies = await _getMoviesUseCase();
    } catch (e) {
      _movies = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
