import 'package:bloc/bloc.dart';


class OnboardingCubit extends Cubit<bool> {
  OnboardingCubit() : super(false); 

  void checklastpage(int index){
    emit(index == 2);
  }
  
}
