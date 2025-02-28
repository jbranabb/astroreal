part of 'container_bloc.dart';

@immutable
sealed class ContainerEvent {}


class EventIncome extends ContainerEvent{
  double newValue;
  EventIncome({required this.newValue});
}
class EventExpenses extends ContainerEvent{
  double newValue;
  EventExpenses({required this.newValue});
}

class ResetEvent extends ContainerEvent{}
