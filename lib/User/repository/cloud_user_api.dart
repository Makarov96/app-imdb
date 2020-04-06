import 'package:http/http.dart' as http;
import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/Utils/config.dart';

class CloudUserApi {
  Future<UserModel> getInfoUser() async {
    final resp = await http.get(Config.getUser);
    return userModelFromJson(resp.body);
  }

  Future<http.Response> addLikeMovie(AddlikeModel infomovie) async {
    http.Response response = await http.post(Config.addFavoriteMovie,
        headers: Config.headers, body: addlikeModelToJson(infomovie));

    return response;
  }

  Future<Myfavoritemovies> getlistFavoriteMovies() async {
    final resp = await http.get(Config.myfavoriteMoviesList);
    return myfavoritemoviesFromJson(resp.body);
  }


  Future<http.Response> addWatchlist(Addwatchlistmodel addwatchlistmodel) async{
    http.Response response = await http.post(Config.addWatchList, headers: Config.headers, body: addwatchlistmodelToJson(addwatchlistmodel));
    return response;
  }


  Future<Watchlistmodel> getWatchlist() async{
    final resp = await http.get(Config.myWatchlist);
    return watchlistmodelFromJson(resp.body);
  }
}
