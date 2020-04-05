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

  //Find movies

  Future<FindMoviesModel> findMovies(String movie) async{
    final resp = await http.get(Config.findMovie+movie+Config.findEndMoviePart);
    return findMoviesModelFromJson(resp.body);
  }




}
