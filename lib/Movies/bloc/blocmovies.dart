import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/repository/cloud_movie_repository.dart';


class BlocMovies extends Bloc {
  @override


  final _cloudMovieRepository = CloudMovieRepository();
  
  Future<MoviesModel> getlistMovies() => _cloudMovieRepository.getlistMovies();


  Future<List<Result>> findMoviesCustom(String movie) =>  _cloudMovieRepository.findMoviesCustom(movie);


  

  get initialState => null;

  @override
  Stream mapEventToState(event) {

    return null;
  }
  
}