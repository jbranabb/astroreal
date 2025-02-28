part of 'container_bloc.dart';

class ContainerState {
  final double heightA;
  final double heightB;
  
  ContainerState({
    required this.heightA, 
    required this.heightB
  });
  
  ContainerState copyWith({
    double? heightA,
    double? heightB,
  }) {
    return ContainerState(
      heightA: heightA ?? this.heightA,
      heightB: heightB ?? this.heightB,
    );
  }
}