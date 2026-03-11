import 'package:cinemapedia/config/constants/enviroment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/mapers/movie_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDB_DataSource extends MovieDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.themoviedb.org/3",
      queryParameters: {
        'api_key':Enviroment.movieDBKey,
        'language':'es-MX'
      }
    )
  );
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response=await dio.get('/movie/now_playing');
    final moviedbrResponse=MovieDBResponse.fromJson(response.data);
    final List<Movie>movies=moviedbrResponse.results
    .where((moviedb)=>moviedb.posterPath!='no-poster')
    .map(
      (moviedb)=>MovieMapper.movieDBToEntity(moviedb)
    ).toList();
    return movies;
  }
}
