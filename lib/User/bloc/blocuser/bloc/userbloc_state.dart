part of 'userbloc_bloc.dart';

abstract class UserblocState extends Equatable {
  const UserblocState();
}

class UserblocInitial extends UserblocState {
  @override
  List<Object> get props => [];
}

class UserblocLoading extends UserblocState {
  @override
  List<Object> get props => [];
}

class UserblocLoaded extends UserblocState {
  @override
  final UserModel userModel;
  UserblocLoaded({this.userModel});

  List<Object> get props => [];
}
