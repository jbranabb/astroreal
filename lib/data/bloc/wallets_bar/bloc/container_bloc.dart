import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'container_event.dart';
part 'container_state.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {
  ContainerBloc() : super(ContainerState(heightA: 0, heightB: 0)) {
    on<EventIncome>((event, emit) {
      emit(state.copyWith(heightA: event.newValue));
    });
    on<EventExpenses>((event, emit) {
      emit(state.copyWith(heightB: event.newValue));
    });

    on<ResetEvent>((event, emit) {
      emit(ContainerState( heightA: 0, heightB: 0));
    });
  }
}
