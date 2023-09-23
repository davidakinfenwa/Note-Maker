part of 'startpage_bloc.dart';

abstract class StartpageState extends Equatable {
  const StartpageState();
  
  @override
  List<Object> get props => [];
}

class StartpageInitial extends StartpageState {}

class StartPageLoadedState extends StartpageState{
  final bool success;

  const StartPageLoadedState(this.success);
}


class StartPageErrorState extends StartpageState{
  final bool error;

  const StartPageErrorState(this.error);
}