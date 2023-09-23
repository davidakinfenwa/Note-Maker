// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'startpage_bloc.dart';

abstract class StartpageEvent extends Equatable {
  const StartpageEvent();


}


class StartEventPage extends StartpageEvent {
  final String username;
  final String password;
  const StartEventPage({
    required this.username,
    required this.password,
  });

   @override
  List<Object> get props => [username,password];
  
}
