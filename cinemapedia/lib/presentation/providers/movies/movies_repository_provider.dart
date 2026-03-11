import 'package:cinemapedia/infrastructure/datasources/moviesdb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//este repositorio es inmutable
final movieRepositoryProvider=Provider((ref){
  return MovieRepositoryImpl(datasource: MovieDB_DataSource());
});