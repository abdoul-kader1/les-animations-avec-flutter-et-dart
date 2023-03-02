import 'package:flutter/material.dart';

class LeAnimatedDefaultTextStyle with ChangeNotifier{

  bool valeur = true;

  changeTextStyle(){
    valeur = !valeur;
    notifyListeners();
  }
}