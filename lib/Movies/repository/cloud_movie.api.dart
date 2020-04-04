import 'package:movies/Movies/model/moviemodel.dart';
import 'package:http/http.dart' as http;
import 'package:movies/Utils/config.dart';

class Cloud_Movie_API {
  Future<MoviesModel> getlistMovies() async {
    final resp = await http.get(Config.getlisMovies);
    return movieModelFromJson(resp.body);
  }
}
