import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_browser/presentation/providers/favorites_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasources/movie_remote_datasource.dart';
import 'data/repositories/movie_repository_impl.dart';
import 'domain/repositories/movie_repository.dart';
import 'domain/usecases/get_movies_usecase.dart';
import 'presentation/providers/movies_provider.dart';
import 'data/services/storage_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => StorageService(sl()));

  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();
    if (dotenv.env['TMDB_API_KEY'] != null) {
      dio.options.queryParameters = {'api_key': dotenv.env['TMDB_API_KEY']};
    }
    return dio;
  });

  // DataSources
  sl.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSource(),
  );

  // Repositories
  sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl()));

  // UseCases
  sl.registerLazySingleton(() => GetMoviesUseCase(sl()));

  // Providers
  sl.registerFactory(() => MoviesProvider(sl()));
  sl.registerFactory(() => FavoritesProvider(sl()));
}
