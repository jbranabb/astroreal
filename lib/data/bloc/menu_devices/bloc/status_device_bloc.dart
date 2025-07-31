import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'status_device_event.dart';
part 'status_device_state.dart';

class StatusDeviceBloc extends Bloc<StatusDeviceEvent, StatusDeviceState> {
  StatusDeviceBloc() : super(StatusInitial()) {
    on<Tap1>((event, emit) {
      emit(StatusTogged(!state.button1, state.button2, state.button3, state.addmore));
     });
    on<Tap2>((event, emit) {
      emit(StatusTogged(state.button1, !state.button2, state.button3, state.addmore));
     });
    on<Tap3>((event, emit) {
      emit(StatusTogged(state.button1, state.button2, !state.button3, state.addmore));
     });
    on<AddMore>((event, emit) {
      emit(StatusTogged(state.button1, state.button2, state.button3, !state.addmore));
     });
  }
}
   