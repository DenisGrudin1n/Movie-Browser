import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/movie_model.dart';

class MovieRemoteDataSource {
  final Dio _dio;
  final String? _apiKey = dotenv.env['TMDB_API_KEY'];

  MovieRemoteDataSource() : _dio = Dio();

  Future<List<MovieModel>> getMovies() async {
    final response = await _dio.get(
      'https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey',
    );

    return (response.data['results'] as List)
        .map((json) => MovieModel.fromJson(json))
        .toList();
  }
}
