import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie_repository.dart';


class BlocMovies extends Bloc {
  @override


  final _cloudUserRepository = CloudMovieRepository();
  Future<MoviesModel> getlistMovies() => _cloudUserRepository.getlistMovies();


  get initialState => null;

  @override
  Stream mapEventToState(event) {
    // TODO: implement mapEventToState
    return null;
  }
  
}