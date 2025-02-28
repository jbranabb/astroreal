import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerCubit extends Cubit<double>{
  ContainerCubit() : super(0);

  void refreshHeightIncome(double newValue){
    emit(0);
    Future.delayed(Duration.zero, (){
      emit(newValue);
    });
  }
  void refreshHeightExpenses(double newValue){
    emit(0);
    Future.delayed(Duration.zero, (){
      emit(newValue);
    });
  }


}