import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'startpage_event.dart';
part 'startpage_state.dart';

class StartpageBloc extends Bloc<StartpageEvent, StartpageState> {
  StartpageBloc() : super(StartpageInitial()) {
    on<StartEventPage>(startEventPage);
  }

  FutureOr<void> startEventPage(StartEventPage event, Emitter<StartpageState> emit) {
    
  }
}
