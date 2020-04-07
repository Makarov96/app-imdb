import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/Movies/model/findmoviemodel.dart' as FindResult;
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:http/http.dart' as http;
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';
import 'package:movies/Utils/config.dart';

class Cloud_Movie_API {

  Future<MoviesModel> getlistMovies() async {
    final resp = await http.get(Config.getlisMovies);
    return movieModelFromJson(resp.body);
  }

  Future<List<FindResult.Result>> findMoviesCustom(String movie) async {
    await Future.delayed(Duration(seconds: 2));
    final resp =
        await http.get(Config.findMovie + movie + Config.findEndMoviePart);
    return FindResult.findMoviesModelFromJson(resp.body).results;
  }

  Future<http.Response> addLikeMovie(AddlikeModel infomovie) async {
    http.Response response = await http.post(Config.addFavoriteMovie,
        headers: Config.headers, body: addlikeModelToJson(infomovie));

    return response;
  }


   Future<http.Response> addWatchlist(Addwatchlistmodel addwatchlistmodel) async{
    http.Response response = await http.post(Config.addWatchList, headers: Config.headers, body: addwatchlistmodelToJson(addwatchlistmodel));
    return response;
  }


   Future<Myfavoritemovies> getlistFavoriteMovies() async {
    final resp = await http.get(Config.myfavoriteMoviesList);
    return myfavoritemoviesFromJson(resp.body);
  }

  Future<Watchlistmodel> getWatchlist() async {
    final resp = await http.get(Config.myWatchlist);
    return watchlistmodelFromJson(resp.body);
  }


}

