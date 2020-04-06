
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/User/repository/cloud_user_repository.dart';

class UserBloc extends Bloc {
  @override

  final _cloudUserRepository = CloudUserRepository();

   //Informacion del usuario
     Future<UserModel> getInfoUser() => _cloudUserRepository.getInfoUser();

     Future<Myfavoritemovies> getlistFavoriteMovies() => _cloudUserRepository.getlistFavoriteMovies();

    Future addLikeMovie(AddlikeModel infomovie) => _cloudUserRepository.addLikeMovie(infomovie);
  // TODO: implement initialState
  get initialState => null;

  @override
  Stream mapEventToState(event) {
    // TODO: implement mapEventToState
    return null;
  }

}