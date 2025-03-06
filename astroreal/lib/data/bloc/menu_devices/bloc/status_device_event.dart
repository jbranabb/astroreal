part of 'status_device_bloc.dart';

@immutable
sealed class StatusDeviceEvent {}
class Tap1 extends StatusDeviceEvent{}
class Tap2 extends StatusDeviceEvent{}
class Tap3 extends StatusDeviceEvent{}
class AddMore extends StatusDeviceEvent{}