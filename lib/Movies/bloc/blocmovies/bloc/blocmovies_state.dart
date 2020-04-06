part of 'blocmovies_bloc.dart';

abstract class BlocmoviesState extends Equatable {
  const BlocmoviesState();
}

class BlocmoviesInitial extends BlocmoviesState {
  @override
  List<Object> get props => [];
}

class BlocmoviesLoading extends BlocmoviesState {
  @override
  List<Object> get props => [];
}

class BlocmoviesLoaded extends BlocmoviesState {
  @override
  final MoviesModel moviesModel;

  BlocmoviesLoaded(this. moviesModel) ;


  @override
  // TODO: implement props
  List<Object> get props => null;
}

