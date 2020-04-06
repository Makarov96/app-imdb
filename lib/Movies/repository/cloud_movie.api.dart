import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:http/http.dart' as http;
import 'package:movies/Utils/config.dart';

class Cloud_Movie_API {
  //get list of movies
  Future<MoviesModel> getlistMovies() async {
    final resp = await http.get(Config.getlisMovies);
    return movieModelFromJson(resp.body);
  }

  Future<List<Result>> findMoviesCustom(String movie) async {
    await Future.delayed(Duration(seconds: 2));
    final resp =
        await http.get(Config.findMovie + movie + Config.findEndMoviePart);
    return findMoviesModelFromJson(resp.body).results;
  }


}

/*
http.post(
      Config.addFavoriteMovie,
      headers: Config.headers,
      body: addlikeModelToJson(infomovie),
    );

 */