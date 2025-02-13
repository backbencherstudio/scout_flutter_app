import 'package:flutter/material.dart';

class ThemeScreenProvider with ChangeNotifier{

  int _isThemeSelected = 0;
  int get isThemeSelected => _isThemeSelected;

  void selectTheme(int index){
    if(_isThemeSelected != index){
      _isThemeSelected = index;
      notifyListeners();

    }
  }

}