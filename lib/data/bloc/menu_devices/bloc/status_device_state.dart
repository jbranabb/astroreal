part of 'status_device_bloc.dart';

 abstract class StatusDeviceState {
  bool button1;
  bool button2;
  bool button3;
  bool addmore;
  StatusDeviceState( this.button1, this.button2, this.button3, this.addmore);
 }
 class StatusInitial extends StatusDeviceState{
  StatusInitial(): super(false, false, false, false);
}
class StatusTogged extends StatusDeviceState{
  StatusTogged(bool buttonIsOn1, bool buttonIsOn2, bool buttonIsOn3, bool addmoreIsOn ) : super(buttonIsOn1, buttonIsOn2, buttonIsOn3, addmoreIsOn);
}


