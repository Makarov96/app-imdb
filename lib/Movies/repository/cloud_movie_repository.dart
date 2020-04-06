
import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie.api.dart';


class CloudMovieRepository {
  final _cloudMovieAPI = Cloud_Movie_API();
  
  Future<MoviesModel> getlistMovies() => _cloudMovieAPI.getlistMovies();

  Future<List<Result>> findMoviesCustom(String movie) => _cloudMovieAPI.findMoviesCustom(movie);

  

}
