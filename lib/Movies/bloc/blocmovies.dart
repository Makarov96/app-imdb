import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/Movies/model/findmoviemodel.dart' as FindResult;
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie_repository.dart';
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';

class BlocMovies extends Bloc {
  @override
  final _cloudMovieRepository = CloudMovieRepository();

  Future<MoviesModel> getlistMovies() => _cloudMovieRepository.getlistMovies();

  Future<List<FindResult.Result>> findMoviesCustom(String movie) =>
      _cloudMovieRepository.findMoviesCustom(movie);

  Future addLikeMovie(AddlikeModel infomovie) =>
      _cloudMovieRepository.addLikeMovie(infomovie);

  Future addWatchlist(Addwatchlistmodel addwatchlistmodel) =>
      _cloudMovieRepository.addWatchlist(addwatchlistmodel);


  Future<Watchlistmodel> getWatchlist() => _cloudMovieRepository.getWatchlist();

  Future<Myfavoritemovies> getlistFavoriteMovies() => _cloudMovieRepository.getlistFavoriteMovies();
  get initialState => null;

  @override
  Stream mapEventToState(event) {
    return null;
  }
}
