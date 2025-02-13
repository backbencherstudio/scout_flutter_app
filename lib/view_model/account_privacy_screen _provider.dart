import 'package:flutter/material.dart';

class AccountPrivacyScreenProvider with ChangeNotifier{

  bool _isSwitchOn = false;
  bool get isSwitchOn => _isSwitchOn;

  void toggleSwitch(bool value){
    if(_isSwitchOn != value){
      _isSwitchOn = value;
      notifyListeners();
    }
  }

}