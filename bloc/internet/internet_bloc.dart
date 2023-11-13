import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'internet_event.dart';
import 'internet_state.dart';

class internetBloc extends Bloc<internetEvent, internetState> {
  final Connectivity _connectivity = Connectivity();

  internetBloc() : super(internetInitialState()) {
    on<internetOnEvent>((event, emit) => emit(internetOnState()));
    on<internetOffEvent>((event, emit) => emit(internetOffState()));

    _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          ConnectivityResult.wifi == result) {
        add(internetOnEvent());
      } else {
        add(internetOffEvent());
      }
    });
  }
}
