import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie.api.dart';

class CloudMovieRepository {
  final _cloudUserApi = Cloud_Movie_API();
  
  Future<MoviesModel> getlistMovies() => _cloudUserApi.getlistMovies();

  Future<FindMoviesModel> findMovies(String movie) => _cloudUserApi.findMovies(movie);

}
