import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/User/repository/cloud_user_api.dart';

class CloudUserRepository {
     final _cloudUserAPI = CloudUserApi();

      //User info
     Future<UserModel> getInfoUser() => _cloudUserAPI.getInfoUser();

     //List of favorites movies

      Future<Myfavoritemovies> getlistFavoriteMovies() => _cloudUserAPI.getlistFavoriteMovies();

      Future addLikeMovie(AddlikeModel infomovie) async => _cloudUserAPI.addLikeMovie(infomovie);


}