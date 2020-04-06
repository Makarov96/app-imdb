import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/Movies/model/moviemodel.dart';

part 'blocmovies_event.dart';
part 'blocmovies_state.dart';

class BlocmoviesBloc extends Bloc<BlocmoviesEvent, BlocmoviesState> {
  @override
  BlocmoviesState get initialState => BlocmoviesInitial();

  @override
  Stream<BlocmoviesState> mapEventToState(
    BlocmoviesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
