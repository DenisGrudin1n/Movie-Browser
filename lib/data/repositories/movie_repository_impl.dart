import '../../domain/entities/movie_entity.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/movie_remote_datasource.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _dataSource;

  MovieRepositoryImpl(this._dataSource);

  @override
  Future<List<MovieEntity>> getMovies() async {
    return await _dataSource.getMovies();
  }
}
