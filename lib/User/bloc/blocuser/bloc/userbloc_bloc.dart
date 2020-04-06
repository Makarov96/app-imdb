import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/User/model/usermodel.dart';

part 'userbloc_event.dart';
part 'userbloc_state.dart';

class UserblocBloc extends Bloc<UserblocEvent, UserblocState> {
  @override
  UserblocState get initialState => UserblocInitial();

  @override
  Stream<UserblocState> mapEventToState(
    UserblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
