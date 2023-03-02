import 'package:flutter/material.dart';

class ChangeOpacite with ChangeNotifier{

  bool opacite = false;

  changeOpacite(){
    opacite = !opacite;
    notifyListeners();
  }
}