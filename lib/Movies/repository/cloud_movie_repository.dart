import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie.api.dart';

class CloudMovieRepository {
  final _cloudUserApi = Cloud_Movie_API();
  Future<MoviesModel> getlistMovies() => _cloudUserApi.getlistMovies();
}
