import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/Movies/model/findmoviemodel.dart'  as FindResult;
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie.api.dart';
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';

class CloudMovieRepository {
  final _cloudMovieAPI = Cloud_Movie_API();

  Future<MoviesModel> getlistMovies() => _cloudMovieAPI.getlistMovies();

  Future<List<FindResult.Result>> findMoviesCustom(String movie) =>
      _cloudMovieAPI.findMoviesCustom(movie);

  Future addLikeMovie(AddlikeModel infomovie) async =>
      _cloudMovieAPI.addLikeMovie(infomovie);

  Future addWatchlist(Addwatchlistmodel addwatchlistmodel) =>
      _cloudMovieAPI.addWatchlist(addwatchlistmodel);


  Future<Myfavoritemovies> getlistFavoriteMovies() => _cloudMovieAPI.getlistFavoriteMovies();

  Future<Watchlistmodel> getWatchlist()  => _cloudMovieAPI.getWatchlist();
}
