import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie_repository.dart';


class BlocMovies extends Bloc {
  @override


  final _cloudUserRepository = CloudMovieRepository();
  
  Future<MoviesModel> getlistMovies() => _cloudUserRepository.getlistMovies();

  Future<FindMoviesModel> findMovies(String movie) => _cloudUserRepository.findMovies(movie);


  get initialState => null;

  @override
  Stream mapEventToState(event) {

    return null;
  }
  
}