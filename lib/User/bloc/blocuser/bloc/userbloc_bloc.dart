import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/User/repository/cloud_user_repository.dart';

part 'userbloc_event.dart';
part 'userbloc_state.dart';

class UserblocBloc extends HydratedBloc<UserblocEvent, UserblocState> {
  @override
  UserblocState get initialState {
    return super.initialState ?? UserblocInitial();
  }

  @override
  UserblocState fromJson(Map<String, dynamic> json) {
    try {
      final usermodel = UserModel.fromJson(json);
      return UserblocLoaded(userModel: usermodel);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(UserblocState state) {
    if (state is UserblocLoaded) {
      return state.userModel.toJson();
    } else {
      return null;
    }
  }

  @override
  Stream<UserblocState> mapEventToState(
    UserblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  final _cloudUserRepository = CloudUserRepository();


  Future<UserModel> getInfoUser() => _cloudUserRepository.getInfoUser();
}
